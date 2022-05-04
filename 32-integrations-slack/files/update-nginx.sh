#!/usr/bin/env bash

echo "Process started"

NAMESPACE=$(oc project -q)
IAF_STORAGE=$(oc get AutomationUIConfig -n $NAMESPACE -o jsonpath='{ .items[*].spec.storage.class }')
oc delete -n $NAMESPACE AutomationUIConfig iaf-system
cat <<EOF | oc apply -f -
apiVersion: core.automation.ibm.com/v1beta1
kind: AutomationUIConfig
metadata:
  name: iaf-system
  namespace: $NAMESPACE
spec:
  description: AutomationUIConfig for cp4waiops
  license:
    accept: true
  version: v1.0
  storage:
    class: $IAF_STORAGE
  tls:
    caSecret:
      key: ca.crt
      secretName: external-tls-secret
    certificateSecret:
      secretName: external-tls-secret
EOF

NAMESPACE=$(oc project -q)
# collect certificate from OpenShift ingress
ingress_pod=$(oc get secrets -n openshift-ingress | grep tls | grep -v router-metrics-certs-default | awk '{print $1}')
oc get secret -n openshift-ingress -o 'go-template={{index .data "tls.crt"}}' ${ingress_pod} | base64 -d > cert.crt
oc get secret -n openshift-ingress -o 'go-template={{index .data "tls.key"}}' ${ingress_pod} | base64 -d > cert.key

# backup existing secret
oc get secret -n $NAMESPACE external-tls-secret -o yaml > external-tls-secret.yaml
# delete existing secret
oc delete secret -n $NAMESPACE external-tls-secret
# create new secret
oc create secret generic -n $NAMESPACE external-tls-secret --from-file=cert.crt=cert.crt --from-file=cert.key=cert.key
# scale down nginx
# REPLICAS=$(oc get pods -l component=ibm-nginx -o jsonpath='{ .items[*].metadata.name }' | wc -w)
oc scale Deployment/ibm-nginx --replicas=0
# scale up nginx
sleep 5
oc scale Deployment/ibm-nginx --replicas=2


oc get pods | grep ibm-nginx
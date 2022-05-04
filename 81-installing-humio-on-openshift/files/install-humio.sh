#!/bin/bash

echo "process started ..... $(date)"

HUMIO_NAMESPACE=humio-ns
HUMIO_USER=developer
HUMIO_PASSWORD=humiopassword

helm repo add humio https://humio.github.io/humio-helm-charts
helm repo update

oc create ns $HUMIO_NAMESPACE

helm install humio-instance humio/humio-helm-charts --namespace $HUMIO_NAMESPACE --values values.yaml

oc adm policy add-scc-to-user privileged -n $HUMIO_NAMESPACE -z humio-instance
oc adm policy add-scc-to-user privileged -n $HUMIO_NAMESPACE -z default

cat <<EOF | oc apply -f -
kind: Route
apiVersion: route.openshift.io/v1
metadata:
  name: humio
  namespace: $HUMIO_NAMESPACE
spec:
  to:
    kind: Service
    name: humio-instance-humio-core-http
    weight: 100
  port:
    targetPort: http
  wildcardPolicy: None
EOF

echo "Waiting for 90 seconds"
sleep 90

### Recreate Secret
oc delete -n $HUMIO_NAMESPACE secret developer-user-password
oc create secret generic -n $HUMIO_NAMESPACE developer-user-password --from-literal=password=$HUMIO_PASSWORD
oc delete -n $HUMIO_NAMESPACE pod humio-instance-humio-core-0

## Print the Webhook URL
export URL=$(oc get routes humio -n $HUMIO_NAMESPACE -o=jsonpath='{.status.ingress[0].host}{"\n"}')
echo "================================================================"
echo " Humio URL : http://$URL"
echo " Humio User : $HUMIO_USER"
echo " Humio Password : $HUMIO_PASSWORD"
echo "================================================================"

echo "process completed ..... $(date)"
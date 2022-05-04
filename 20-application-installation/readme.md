# Deploying iLender Application

## 1. Update Humio properties

Update `humioUrl` and `humioToken` properties in the file `./yaml/20-deployable-common.yaml`

```
  humioUrl: http://1.1.1.1:8080/api/v1/ingest/humio-unstructured
  humioToken: 
```

[Refer ... Installing Humio on RedHat Openshift](../81-installing-humio-on-openshift)


## 2. Apply the yaml

Apply the yaml in the Openshift clusters

```
kubectl apply -f ./yaml
```

## 3. Access the app

App is installed in the `ilender-ns` namespace.

![ilender](./images/iLender-Login.png)


### 3.1 User Id and Password

```
sam/sam
sandy/sandy
```

### 3.2 URLs

1. Run the below command to print the URL of the Application.

```
APP_URL=$(oc get route -n ilender-ns ilender-frontweb -o jsonpath={.spec.host})
CreditScore_URL=$(oc get route -n ilender-ns ilender-creditscore -o jsonpath={.spec.host})

echo "===================================================================================="
echo "App URL  (ilender-frontweb)                     : http://$APP_URL"
echo "CreditScore Service URL  (ilender-creditscore)  : http://$CreditScore_URL/creditscore"
echo "===================================================================================="
```

2. Example URLs

```
http://ilender-frontweb-ilender-ns.aaaaa.cloud

http://ilender-creditscore-ilender-ns.aaaaa.cloud/creditscore
```
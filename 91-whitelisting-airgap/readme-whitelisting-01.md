# AIOps install - whitelisting and AirGap

To install WA 3.2.0 in an island in cloud, which allow to access internet. But some of the urls to be whitelisted and port to be opened.

Assuming Internal VPC, port restrictions are not there. VMs (Humio, PI) , OCP can communicate to each other on multiple ports.

## Domains

Here are the urls to white listed.

```
icr.io
docker.io
https://github.com
https://developer.servicenow.com/
https://app.slack.com/
https://api.slack.com/apps
https://ibm.com
https://redhat.com
```

All the websites needs the `port 80/443` to be open.


## Tools

Here are the tools to be installed. The domains related to that also to be accessible

```
kubectl (Kubectl CLi)
oc (Openshift CLI)
jq
curl
ab (Apache bench)
helm
kafkacat
ansible
ansible-playbook 
ssh-keygen
tar 
scp
ibmcloud plugin install container-registry
ibmcloud plugin install kubernetes-service
```

## Detailed Breakup

### 1. Container Registry

```
icr.io
docker.io
```

### 2. Humio 

```
https://github.com
```

#### Tools required for Humio
```
ansible
ansible-playbook 
ssh-keygen
tar 
scp
```

### 3. Service Now

```
https://developer.servicenow.com/
```


### 4. Slack

```
https://app.slack.com/
https://api.slack.com/apps
```


### 5. Other Tools required

```
kubectl (Kubectl CLi)
oc (Openshift CLI)
jq
curl
ab (Apache bench)
helm
kafkacat
```


### 5. IBM Cloud CLI
```
https://cloud.ibm.com
```

####  install ibm cloud cli

```
curl -fsSL https://clis.cloud.ibm.com/install/linux | sh

```

#### To install ibmcloud plugins run following commands

```
ibmcloud plugin install container-registry
ibmcloud plugin install kubernetes-service

```

### 6. Predictive Insights

Predictive Insights would need access to yum repositories to download various dependent libraries.
```
https://redhat.com
```

Predictive Insight required to get images from IBM Partner World Portal 
```
https://www.ibm.com/partnerworld/program/benefits/software-access-catalog
```


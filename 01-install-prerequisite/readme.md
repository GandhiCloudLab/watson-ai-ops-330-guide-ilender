# Watson AIOps 3.2.0 installation and demo setup requirements.

This documentation explains about the Hardware and account requirements for Watson AIOps 3.3.0 installation and demo setup.

## 1. RedHat Openshift on IBM Cloud

A RedHat Openshift on IBM Cloud (ROKS) with the below configuration needed to install Watson AIOps 3.2

 - OCP Version : 4.8.18
 - 5 Nodes with b3c.16x64 flavour. (CPU 16 core, Memory 64 GB)
 - Classic Infrastructure

 Here is a reference values and steps for [install](../80-provisioning-redhat-openshift-in-ibmcloud).

## 2. Slack Account

SRE would be indicated about the incident through ChatOps such as Slack or Team. 

Slack account is required for the WAIOps demo setup.

The link [here](../32-integrations-slack) explains about account creation and integration with WAIOps.

## 3. ServiceNow Account

A ServiceNow account is required or atleast Developer instance to be created using the below URL as part of the WAIOps demo setup..

https://developer.servicenow.com/dev.do#!/guides/rome/developer-program/pdi-guide/obtaining-a-pdi

Watson AIOps can create Incidents in ServiceNow apart from slack story. Also it can train the existing incidents from ServiceNow for identifying the Similar Incidents and to choose the next best action, in case of an incident.


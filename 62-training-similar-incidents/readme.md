# Training - Similar Incidents

This article explains about how to do Similar Incidents training in Watson AIOps.

The article is based on the the following

- RedHat OpenShift 4.8 on IBM Cloud (ROKS)
- Watson AI-Ops 3.2.0


## 1. Pre Requisite

### Sample Incidents for Training

Atleast 5 incidents should have been created in service-now, resolved with proper resolve comments and closed.

Here are the sample incidents from service now.

![ServiceNow](./images/image-00001.png)

You can refer to this link to create these incidents in sevicenow. https://github.com/ibm-gsi-ecosystem/watson-ai-ops-snow/tree/main/01-snow-incidents

## 2. Enable Data flow for Training

1. Goto the page `Data and tool connections` and select `ServiceNow` 

![ServiceNow](./images/image-00002.png)


2. Click on `Edit` menu from the selected `ServiceNow` integrations.

![ServiceNow](./images/image-00003.png)


3. Enter the following values

- Data flow is on
- Historical data for Initial AI-Training
- Start Date should be past date 
- End Date could be current date 

![ServiceNow](./images/image-00004.png)

4. Click on `Save` button.

## 3.Start Training

1. Goto the page `AI Model Management`

2. Click on `Manage` tab.

3. Click on `Similar Incidents` link.

![ServiceNow](./images/image-00005.png)

4. Click on `Start Training` link.

![ServiceNow](./images/image-00006.png)

5. Training starts

The training may take 2 to 5 minutes based on the data size.

![ServiceNow](./images/image-00007.png)

Training versions

![ServiceNow](./images/image-00008.png)

Apps covered

![ServiceNow](./images/image-00009.png)

![ServiceNow](./images/image-00010.png)

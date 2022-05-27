# Training - Change Risk

This article explains about how to do Change Risk training in Watson AIOps.

The article is based on the the following

- RedHat OpenShift 4.8 on IBM Cloud (ROKS)
- Watson AI-Ops 3.3.0


## 1. Pre Requisite

### Sample Change Request for Training

Atleast 5 change request (CR) should have been created in service-now, out of which `3` records are having `close_code` as `Successful` and other `2` are having `Unsuccessful` as like below.

![ChangeRisk](./images/snow1.png)

#### Sample Successful record
![ChangeRisk](./images/snow2.png)

#### Sample Unsuccessful record
![ChangeRisk](./images/snow3.png)

Go to ServiceNow and feed 5 records in change_requests as mentioned above. 

## 2. Enable Data flow for Training

Need to enable the Dataflow before starting the training.

1. Make sure the ServiceNow DataFlow is enabled.

2. Enter the below field values

- Custom : On
- Start Date: Yesterday date
- End Date: Tomorrow date
- Mode: Historical ....

![ChangeRisk](./images/image-00002.png)

## 3. Start Training

1. Goto the page `AI Model Management`

![ilender](./images/image-00003-1.png)

2. Click on `Manage` tab

![ilender](./images/image-00003.png)


![ilender](./images/image-00004.png)

4. Click on `Start Training` link.

![ChangeRisk](./images/image-00005.png)

5. Training starts

The training may take 2 to 5 minutes based on the data size.

Training is Queued

![ChangeRisk](./images/image-00006.png)

Data is analysed and data quality is good.

Training is completed.

![ilender](./images/image-00007.png)


6. Click on `Versions` tab

You can see the version trained and deployed.

![ilender](./images/image-00008.png)

7. Click on `Coverage` tab

You can see the iLender application is covered.

![ilender](./images/image-00009.png)

8. Click on `Manage` in breadcrump.

You can see the Change risk is trained.

![ilender](./images/image-00010.png)

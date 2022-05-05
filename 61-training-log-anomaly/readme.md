# Training - Log Amomaly

This article explains about how to do Log Amomaly training in Watson AIOps.

The article is based on the the following

- RedHat OpenShift 4.8 on IBM Cloud (ROKS)
- Watson AI-Ops 3.3.0

## 1. Disable Humio Data Flow

Need to disable the Dataflow before generating the load in the application.

1. Make sure the humio DataFlow is disabled.

![ilender](./images/image-00001.png)


2. If it is not disabled then disable it.

## 2. Application

We use iLender application here. 

Refer : [20-application-installation](../20-application-installation) to know how the app is deployed.

![ilender](./images/image-00001.png)

## 3. Generate Load

Generate load in the application for 20 minutes by refering [21-application-load-generation](../21-application-load-generation).

You need to have 10K lines of logs for each service in the application.

This script will run for 20 minutes and stop.

## 4. Disable Humio Data Flow for Training

While the load is ongoing in the application, do the following steps to enable the live log mode and to copy the logs into AIMgr for training. 

1. Goto the page `Data and tool connections` and select `Humio` 

![ilender](./images/image-00002.png)

2. Click on the humio connection `humio-connect-ilender`

![ilender](./images/image-00003.png)

3. Select the `Data flow` : `On`

4. Select the `Mode` : `Live Data for Initial AI Training`

5. Click on the `Save`

![ilender](./images/image-00004.png)


Now the live data would get copied to AIMgr.

## 6. Do Training

1. Goto the page `AI Model Management`

2. Click on `Manage` tab

![ilender](./images/image-00006.png)

3. Click on `log-anomaly-detection` link

![ilender](./images/image-00007.png)

4. Click on `Start Training` link

![ilender](./images/image-00008.png)

The training would start and go for `20 minutes` to `1 hour` based on the data size.

You will have `Training Complete` status once the training is done.

5. Click on `Versions` tab

You can see the version trained and deployed.

![ilender](./images/image-00009.png)

![ilender](./images/image-00010.png)

![ilender](./images/image-00011.png)
![ilender](./images/image-00012.png)
![ilender](./images/image-00013.png)
![ilender](./images/image-00014.png)
![ilender](./images/image-00015.png)
![ilender](./images/image-00016.png)
![ilender](./images/image-00017.png)
![ilender](./images/image-00018.png)
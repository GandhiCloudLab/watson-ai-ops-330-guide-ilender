# Create AI-Model Definition for Log Anomaly

This article explains about how to Create Training Definition for Similar Incidents in Watson AIOps.

The article is based on the the following

- RedHat OpenShift 4.8 on IBM Cloud (ROKS)
- Watson AI-Ops 3.2.0


## Steps

1. Click on `AI Model Management` link

<img src="images/image-00001.png">

2. Click on `Configure` link in `Log anomaly detection - natural language` card

<img src="images/image-00002.png">

3. Click on `Next` 

<img src="images/image-00003.png">

4. Enter the below field values

- Configuration Name 
- Configuration Description 

5. Click on `Next` 

<img src="images/image-00004.png">

4. Enter the below field values

- Custom : On
- Start Date: Yesterday date
- End Date: Tomorrow date

(Whiel training, we will go for live logs and the date of the live logs should fall under this date range)

5. Click on `Next` 

<img src="images/image-00005.png">

5. Click on `Next` 

<img src="images/image-00006.png">

5. Click on `Next` 

<img src="images/image-00007.png">

4. Enter the below field values

- Deployment Type : On Completion

5. Click on `Done` 

<img src="images/image-00008.png">

5. See the status as `Configured` 

<img src="images/image-00009.png">

9. Click on `Manage` tab.

The Log Anomaly model training definition is displayed.

<img src="images/image-00010.png">


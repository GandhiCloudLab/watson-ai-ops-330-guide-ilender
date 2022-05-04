# Setup ServiceNow Integration

This article explains about how to setup ServiceNow Integration in Watson AIOps.

The article is based on the the following.

- RedHat OpenShift 4.8 on IBM Cloud (ROKS)
- Watson AI-Ops 3.2.0


1. Goto the page `Data and tool integrations`

2. Click on  `Add Integration`

![ServiceNow](./images/image-00001.png)

3. In the `ServiceNow` card click on the `Add Integration` link

![ServiceNow](./images/image-00002.png)

4. Click on `Connect` 

![ServiceNow](./images/image-00003.png)

5. Enter the below field values

- Name 
- Description 
- ServiceNow URL
- User
- Password

6. Click on `Next` 

![ServiceNow](./images/image-00004.png)
![ServiceNow](./images/image-00005.png)

7. Click on `Test Connection` to check the connection with humio

![ServiceNow](./images/image-00006.png)

8. Click on `Next`

![ServiceNow](./images/image-00007.png)


9. Click on `Next`

![ServiceNow](./images/image-00007.png)


10. Enter the below field values

- Dataflow : Off 
- Mode: Historical ..
- Start Date : Last year date
- End Date  : tommorrow date

11. Click on `Done`

![ServiceNow](./images/image-00008.png)

12. ServiceNow connection created

![ServiceNow](./images/image-00009.png)


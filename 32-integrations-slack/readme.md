# Create Slack Account and Integrate in Watson AIOps

The article is based on the the following

- RedHat OpenShift 4.8 on IBM Cloud (ROKS)
- Watson AI-Ops 3.3.0

#### Steps

Here are the steps to be done when Configuring Slack for Watson AIOps AI Manager.

- Create Slack Workspace
- Create Slack Channels
- Create Slack App
- Integrate Slack in AI-Ops
- Integrate AI-Ops in Slack
- Update Nginx Certificate
- Create Slash Command

## 1. Create Slack Workspace

Goto https://slack.com/

Click on `Create a New Workspace`

<img src="images/image-00001.png">

Enter your email, otherwise go with `Continue with Google`

<img src="images/image-00002.png">

Choose your email

<img src="images/image-00003.png">

Click on `Create a Workspace`

<img src="images/image-00004.png">

Enter the workspace name

<img src="images/image-00005.png">

Enter some default channel name

<img src="images/image-00006.png">

Skip this step

<img src="images/image-00008.png">
<img src="images/image-00010.png">

Click on `Use slack in your browser`

<img src="images/image-00011.png">

It will open the workspace as like below.

## 2. Create Slack Channels

Click on `Add Channel`

<img src="images/image-00014.png">

Click on `Create Channel` (this is for proactive)

<img src="images/image-00015.png">

Enter `Channel Name` and etc

Click on `Create`

<img src="images/image-00016.png">

Click on `Skip for Now`

<img src="images/image-00017.png">

Similarly Create another channel (this is for reactive)

<img src="images/image-00020.png">


## 3. Create Slack App

Goto https://api.slack.com/apps

Click on `Create New App`

<img src="images/image-00025.png">

Enter Slack ` App Name`.

Choose the above created Workspace name.

Click on `Create App`.

<img src="images/image-00026.png">

Click on `OAuth & Permissions` from the left menu, 

<img src="images/image-00027.png">

In `Scopes` section click on `Add an OAuth Scope` button

<img src="images/image-00028.png">
<img src="images/image-00029.png">

Add all the listed below

- app_mentions:read
- channels:manage
- channels:read
- chat:write
- files:write
- groups:read
- groups:write
- users:read
- users:read.email

<img src="images/image-00030.png">

Click on `Install in Workspace`.

<img src="images/image-00031.png">

Click on `Allow` button.

<img src="images/image-00053.png">

Copy the `Bot User oAuth Token` to notepad.

<img src="images/image-00032.png">

Click on left menu `Basic Information`

Click on the `Show` and copy the `Signing Secret` to notepad.

<img src="images/image-00070-sign.png">

Right click on the Channel and choose the `copy Link` and paste in notepad.

Do the same for both the channels.

<img src="images/image-00033.png">

## 4. Integrate Slack in AI-Ops

1. In the AI-Ops console, click on `Data and Tool connections` in home page.

<img src="images/image-aimgr-00001.png">

2. Click on `Add Connection`.

<img src="images/image-aimgr-00002.png">

3. Click on `ChatOps`.

4. Click on `Add Connection`.

<img src="images/image-aimgr-00003.png">

5. Click on `Configure`.

<img src="images/image-aimgr-00004.png">


3. Enter some  `Name`.

4. Enter the below fields that we copied above

- Signing Secret
- Bot Token
- Proactive Channel
- Reactive Channel

5. Do the `Test Connection`

6. Click on `Done` button.

<img src="images/image-aimgr-00005.png">
<img src="images/image-aimgr-00006.png">

7. See the Slack integration created below

8. Click on the `Slack` link

<img src="images/image-aimgr-00007.png">

9. Copy the slack url

<img src="images/image-aimgr-00008.png">


## 5. Integrate WAIOps in Slack

Click on `Event Subscription` from the left menu

Choose the `On` button in the `Enable Events`


<img src="images/image-00044.png">

Paste the slack url and the status becomes verified.

<img src="images/image-00043.png">

Choose the below item to in the `Subscribe to bot Events` section.

- app_mention
- member_joined_channel

Click on `Save Changes` 

<img src="images/image-00048.png">

Click on the `Interactivity & Shortcuts` from the left menu

Click on the `On` checkbox.

Enter the `Slack Url`

Click on `Save Changes`

<img src="images/image-00049.png">



## 6. Create Slash Command

### 6.1 Enter Slash commands in Slack Config

Click on `Slash Commands` in the left menu

Click on `Create New Command` button

<img src="images/image-00050.png">

Enter `/welcome` in the `Command` text box

Enter `Request URL` the slack url copied above from AI-Ops

Enter `Description`

Click on  `Save`

<img src="images/image-00051.png">

Click on  `reinstall your app`

<img src="images/image-00052.png">

Click on  `Allow` button

<img src="images/image-00053.png">


### 6.2 Add apps to Proactive and Reactive channels.


Click on  `Add Apps` for proactive channel

<img src="images/image-00054.png">
<img src="images/image-00055.png">

Click on  `Add` button near to the app that was created above.

<img src="images/image-00056.png">

Click on  `Add Apps` for reactive channel and add the app.

<img src="images/image-00057.png">

### 6.3 Patch the slack integrator for /welcome

Run the below commands to patch the slack integrator with `/welcome` and  restart the nginx pods

```
oc project cp4waiops

oc set env deployment/$(oc get deploy -l app.kubernetes.io/component=chatops-slack-integrator -o jsonpath='{.items[*].metadata.name }') SLACK_WELCOME_COMMAND_NAME=/welcome

oc delete pod $(oc get po |grep ibm-nginx | awk '{print$1}')

```

### 6.4 Verify the nginx pods

Run the below command to verify the nginx pods they are up and running.

```
oc get pod $(oc get po |grep ibm-nginx | awk '{print$1}')

```

<img src="images/image-00060.png">


### 6.5 Verify /welcome in slack

Enter `/welcome` command in proactive channel and you should see the welcome message like this.

<img src="images/image-00061.png">

Enter `/welcome` command in reacive channel and you should see the welcome message like this.

<img src="images/image-00062.png">


## Reference

#### Updating the Nginx Certificate
https://pages.github.ibm.com/up-and-running/watson-aiops/AI_Manager/Installation/#ngnix-certificate-for-v31

https://cloudpak8s.io/aiops/aimgr/install/#updating-the-nginx-certificate

#### Configuring Slack applications for Watson AIOps AI Manager

https://www.ibm.com/docs/en/cloud-paks/cp-waiops/3.1.0?topic=integrations-slack

#### Configuring Slack applications for integration

https://www.ibm.com/docs/en/cloud-paks/cp-waiops/3.1.0?topic=integrations-configuring-slack-integration

#### Others

https://cloudpak8s.io/aiops/aimgr/slack/

To create free Workspace
https://slack.com/get-started#/create
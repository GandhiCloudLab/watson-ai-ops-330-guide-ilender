# Resolving Incidents via Runbook

This article explains about how to resolve incidents using the Runbook

The article is based on the the following

- RedHat OpenShift 4.8 on IBM Cloud (ROKS)
- Watson AI-Ops 3.3.0

## 1. Execute RunBook 

1. Click on `Runbook` icon in the alert.

![Story Viewer](./images/webconsole/i-31.png)

2. Select the `Preview` menu.
![Story Viewer](./images/webconsole/i-51.png)

3. Click on `Run runbook`.
![Story Viewer](./images/webconsole/i-52.png)

4. Click on `Run runbook`.
![Story Viewer](./images/webconsole/i-53.png)

5. Click on `Run` in `Step1`.
![Story Viewer](./images/webconsole/i-55.png)

6. Click on `Complete` in `Step1`.
![Story Viewer](./images/webconsole/i-56.png)

7. Click on `Runbook worked`.
![Story Viewer](./images/webconsole/i-57.png)

The runbook is executed. The probelm should have been resolved.

## 2. Mark resolved in Story

1. Click on  `Mark As Resolved` button in Slack Story
![Slack Story](./images/resolve/i-01.png)

2. Click on  `Submit` button to resolve the Slack Story
![Slack Story](./images/resolve/i-02.png)

3. Story is closed automatically once it is resolved
![Slack Story](./images/resolve/i-03.png)

4. In `Stories and Alerts` page also the story is shown as `Resolved`
![Slack Story](./images/resolve/i-04.png)

5. In `ServiceNow` also the story is `Resolved`
![Slack Story](./images/resolve/i-05.png)

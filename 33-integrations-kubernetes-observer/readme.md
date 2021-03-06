# Setup Kubernetes Integration or Observer

This document explains about how to setup Kubernetes Observer in Watson AIOps. The Kube Observer will observe the resources in the Target Cluster and find form a Topology out of it.

As part of the kubernetes observer, it is required to communicate with the target cluster. 
Here the target cluster is the local cluster where the AI Manager and iLender app are installed.

Do the following.


## 1. Create Kube Observer Connection

1. Click on `Add Connection`

<img src="images/image-00001.png">

2. Choose `Topology`

3. Click on `Add Connection` in the `Topology` tile.

<img src="images/image-00002.png">

3. Click on `Connect`

<img src="images/image-00003.png">

4. Enter any value in `Name`,  `Description` and `Data Center`

<img src="images/image-00004.png">

5. Enter the following

 - Connection Type : Local
 - Namespace : ilender-ns  (where you have deployed your app to observe)

<img src="images/image-00005.png">

6. Enter the following

 - Schedule Request : On
 - Interval : 5

7. Click on `Done`

<img src="images/image-00006.png">

8. Kubernetes connection is created successfully. This might observe the resources found in the given namespace of the kubernetes cluster and create a Resource group

<img src="images/image-00007.png">


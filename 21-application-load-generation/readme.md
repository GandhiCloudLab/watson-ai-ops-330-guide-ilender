# Generate Load for iLender App

Here we use docker image to create a load. 

### 1. Open the file script file

Open the file `files/01-create-load.sh`

### 2. Update iLender URL

In the above script file, update the below property to point to iLender URL

```
export P_HOST=http://ilender-frontweb-ilender-ns.aaaaa.cloud
```

### 3. Load duration

By default the load is generated for 20 minutes. You can increase it by updating this property. 

```
export P_TIME_DURATION=20m
```

### 4.  Run the load

Run the below script to start the load. It will run for the given time duration and stop automatically.

```
sh files/01-create-load.sh
```

### To Stop the load in-between

To stop the load in the middle you can use the below commands.

```
Jeyas-MacBook-Pro:~ jeyagandhi$ docker ps
CONTAINER ID   IMAGE                               COMMAND      CREATED          STATUS          PORTS     NAMES
d396bd6c2ca8   gandigit/ilender-load-dev-2:0.0.1   "./run.sh"   23 seconds ago   Up 22 seconds             naughty_mendeleev
```

```
Jeyas-MacBook-Pro:~ jeyagandhi$ docker stop d396bd6c2ca8
d396bd6c2ca8
```





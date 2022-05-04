#!/usr/bin/env bash

function sync_cassandra () {

  echo "----------------------------------------------------------------------"
  echo " 9. Sync Cassandra Pods "
  echo "----------------------------------------------------------------------"

  oc project $NAMESPACE

  ### Note: This file is downloaded from https://github.com/IBM/cp4waiops-samples/blob/main/post-install/3.3/sync-cassandra.sh
  ./common/90-sync-cassandra.sh

}


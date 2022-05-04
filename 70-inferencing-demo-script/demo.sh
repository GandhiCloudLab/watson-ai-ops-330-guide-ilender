#!/bin/bash

source ./config.sh

menu_option_1() {

  date1=$(date '+%Y-%m-%d %H:%M:%S')
  echo " Create load in iLender App ...started ....$date1"

  load/01-creditscore-clear.sh
  sleep 5
  load/02-creditscore-consume-memory.sh
  load/03-run-locust-load.sh

  date1=$(date '+%Y-%m-%d %H:%M:%S')
  echo " Create load in iLender App...completed ....$date1"
}

menu_option_2() {
  date1=$(date '+%Y-%m-%d %H:%M:%S')
  echo "Clear load ...started ....$date1"
  
  load/01-creditscore-clear.sh

  date1=$(date '+%Y-%m-%d %H:%M:%S')
  echo "Clear load ...completed ....$date1"
}

press_enter() {
  echo ""
  read -p "	Press Enter to continue "
  clear
}

incorrect_selection() {
  echo "Incorrect selection! Try again."
}

clear

until [ "$selection" = "0" ]; do
  echo ""
  echo "      Watson AI-Ops Demo "
  echo "      -------------------"
  echo ""
  echo "      1  -  Create load in iLender App"
  echo "      2  -  Clear load"
  echo ""
  echo "      0  -  Exit"
  echo ""
  read -p "      Enter selection: " selection
  echo ""
  case $selection in
    1 ) clear ; menu_option_1 ; press_enter ;;
    2 ) clear ; menu_option_2 ; press_enter ;;
    0 ) clear ; exit ;;
    * ) clear ; incorrect_selection ; press_enter ;;
  esac
done


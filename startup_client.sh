#!/bin/sh

process=build/linux/furSwarmLinux
makerun="./seagrass-tower/build/linux/furSwarmLinux"  

dir_timestamp=~/logs/`date +%Y-%m-%d_%H-%M-%S`_client
mkdir $dir_timestamp
mv ~/logs/furSwarmLinux*.log $dir_timestamp

if ps ax | grep -v grep | grep $process > /dev/null         
then                 
  exit         
else         
  $makerun &
fi 

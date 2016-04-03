#!/bin/sh

process=build/linux/furSwarmLinux
makerun="./seagrass-tower/build/linux/furSwarmLinux"  

if ps ax | grep -v grep | grep $process > /dev/null         
then                 
  exit         
else         
  $makerun &
fi 

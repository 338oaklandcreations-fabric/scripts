#!/bin/sh

process=Guidance-assembly.jar
makerun="java -XX:ThreadStackSize=1024 -jar /home/mauricio/jars/Guidance-assembly.jar"  

if ps ax | grep -v grep | grep $process > /dev/null         
then                 
  exit         
else         
  dir_timestamp=~/logs/`date +%Y-%m-%d_%H-%M-%S`_guidance
  mkdir $dir_timestamp
  mv ~/logs/guidance*.log $dir_timestamp

  sleep 20

  export FABRIC_USER_PASSWORDS=mauricio,mauricio:marin,marvin:aaron,aaron:floss,floss:leo,leo
  $makerun &
fi 

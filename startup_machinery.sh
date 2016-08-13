#!/bin/sh

process=Machinery-assembly.jar
makerun="java -XX:ThreadStackSize=1024 -jar /home/mauricio/jars/Machinery-assembly.jar"  

if ps ax | grep -v grep | grep $process > /dev/null         
then                 
  exit         
else         
  dir_timestamp=~/logs/`date +%Y-%m-%d_%H-%M-%S`_machinery
  mkdir $dir_timestamp
  mv ~/logs/machinery*.log $dir_timestamp

  $makerun &
fi 

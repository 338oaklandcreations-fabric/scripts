#!/bin/sh

process=Machinery-assembly.jar
makerun="java -jar /home/mauricio/jars/Machinery-assembly.jar"  

if ps ax | grep -v grep | grep $process > /dev/null         
then                 
  exit         
else         
  dir_timestamp=~/logs/`date +%Y-%m-%d_%H-%M-%S`_webserver
  mkdir $dir_timestamp
  mv ~/logs/machinery*.log $dir_timestamp

  $makerun &
fi 

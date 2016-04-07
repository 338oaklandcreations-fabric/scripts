#!/bin/sh

process=Machinery-assembly-1.0.jar
makerun="java -jar /home/mauricio/jars/Machinery-assembly-1.0.jar"  

dir_timestamp=~/logs/`date +%Y-%m-%d_%H-%M-%S`_webserver
mkdir $dir_timestamp
mv ~/logs/machinery*.log $dir_timestamp

if ps ax | grep -v grep | grep $process > /dev/null         
then                 
  exit         
else         
  $makerun &
fi 

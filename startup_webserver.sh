#!/bin/sh

process=Machinery-assembly-1.0.jar
makerun="java -jar ~/jars/Machinery-assembly-1.0.jar"  

if ps ax | grep -v grep | grep $process > /dev/null         
then                 
  exit         
else         
  $makerun &
fi 

#!/bin/sh

process=tcl_server
makerun="./openpixelcontrol/bin/tcl_server -g 2.0"  

if ps ax | grep -v grep | grep $process > /dev/null         
then                 
  exit         
else         
  dir_timestamp=~/logs/`date +%Y-%m-%d_%H-%M-%S`_tcl_server
  mkdir $dir_timestamp
  mv ~/logs/tcl_server*.log $dir_timestamp

  $makerun &
fi 

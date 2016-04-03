#!/bin/sh

process=tcl_server
makerun="./openpixelcontrol/bin/tcl_server"  

if ps ax | grep -v grep | grep $process > /dev/null         
then                 
  exit         
else         
  $makerun &
fi 

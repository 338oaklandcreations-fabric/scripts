#!/bin/sh                                                                                                                                                                                            

set -x

unzip furswarm.zip
rm -rf seagrass-tower/src/
mv Users/mauricio/Documents/development/furSwarmMember/src/ seagrass-tower/src/
rm -rf Users
rm furswarm.zip
cd ~/seagrass-tower/build/linux
make clean
make

cd ~/scripts


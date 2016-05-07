#!/bin/sh

set -x

cd ~/seagrass-tower/build/linux

git fetch --all
git reset --hard origin/master

make clean
make

cd ~/openpixelcontrol

git fetch --all
git reset --hard origin/master

make clean
make

cd ~/scripts

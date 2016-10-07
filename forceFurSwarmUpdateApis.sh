<<<<<<< HEAD
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

=======
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
>>>>>>> c67e049bec8d46f53e9f0e452ec7873557910632

#!/bin/sh

echo '*********************'
echo '** Kill tcl_server **'
echo '*********************'

ssh $TARGET_IP 'ps -ef | grep tcl_server | grep -v grep | awk '"'"'{print $2}'"'"' | xargs kill'

echo '***********************'
echo '** Kill lumenEssence **'
echo '***********************'

ssh $TARGET_IP 'ps -ef | grep furSwarm | grep -v grep | awk '"'"'{print $2}'"'"' | xargs kill'

echo '********************'
echo '** Kill Machinery **'
echo '********************'

ssh $TARGET_IP 'ps -ef | grep Machinery | grep -v grep | awk '"'"'{print $2}'"'"' | xargs kill'

echo '********************'
echo '** Kill Guidance **'
echo '********************'

ssh $TARGET_IP 'ps -ef | grep Guidance | grep -v grep | awk '"'"'{print $2}'"'"' | xargs kill'




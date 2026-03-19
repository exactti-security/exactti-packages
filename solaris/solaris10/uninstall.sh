#!/bin/sh
# uninstall script for exactti-agent
# Exact-Ti, Inc 2015

control_binary="wazuh-control"

if [ ! -f /var/ossec/bin/${control_binary} ]; then
  control_binary="ossec-control"
fi

## Stop and remove application
/var/ossec/bin/${control_binary} stop
rm -rf /var/ossec/

## stop and unload dispatcher
#/bin/launchctl unload /Library/LaunchDaemons/com.exactti.agent.plist

# remove launchdaemons
rm -f /etc/init.d/exactti-agent
rm -rf /etc/rc2.d/S97exactti-agent
rm -rf /etc/rc3.d/S97exactti-agent

## Remove User and Groups
userdel wazuh 2> /dev/null
groupdel wazuh 2> /dev/null

exit 0

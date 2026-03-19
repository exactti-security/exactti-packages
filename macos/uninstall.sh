#!/bin/sh

## Stop and remove application
sudo /Library/Ossec/bin/wazuh-control stop
sudo /bin/rm -r /Library/Ossec*

## stop and unload dispatcher
/bin/launchctl unload /Library/LaunchDaemons/com.exactti.agent.plist

# remove launchdaemons
/bin/rm -f /Library/LaunchDaemons/com.exactti.agent.plist

## remove StartupItems
/bin/rm -rf /Library/StartupItems/WAZUH

## Remove User and Groups
/usr/bin/dscl . -delete "/Users/wazuh"
/usr/bin/dscl . -delete "/Groups/wazuh"

/usr/sbin/pkgutil --forget com.exactti.pkg.exactti-agent
/usr/sbin/pkgutil --forget com.exactti.pkg.exactti-agent-etc

# In case it was installed via Puppet pkgdmg provider

if [ -e /var/db/.puppet_pkgdmg_installed_exactti-agent ]; then
    rm -f /var/db/.puppet_pkgdmg_installed_exactti-agent
fi

echo
echo "Exact-Ti agent correctly removed from the system."
echo

exit 0

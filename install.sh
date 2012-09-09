./install_tweaks.sh

echo "Installing LunaSysMgr ..."
novacom run -- file:///sbin/stop LunaSysMgr
novacom run file://bin/mount -- -o remount,rw /
sleep 1
novacom put file:///usr/bin/LunaSysMgr < ./bin/LunaSysMgr
novacom run file://bin/mount -- -o remount,ro /
novacom run -- file:///sbin/reboot

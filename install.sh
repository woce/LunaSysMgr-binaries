novacom put file:///media/cryptofs/apps/usr/palm/services/org.webosinternals.tweaks.prefs/preferences/useCustomCarrierString.json < ./tweaks/useCustomCarrierString.json
novacom put file:///media/cryptofs/apps/usr/palm/services/org.webosinternals.tweaks.prefs/preferences/spread-gestures.json < ./tweaks/spread-gestures.json
novacom put file:///media/cryptofs/apps/usr/palm/services/org.webosinternals.tweaks.prefs/preferences/spread-gestures.json < ./tweaks/mini-cards.json
novacom run -- file:///sbin/stop LunaSysMgr
novacom run file://bin/mount -- -o remount,rw /
novacom put file:///usr/bin/LunaSysMgr < ./bin/LunaSysMgr
novacom run file://bin/mount -- -o remount,ro /
novacom run -- file:///sbin/reboot

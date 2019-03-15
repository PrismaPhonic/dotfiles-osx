#!/bin/bash

echo 'Updating settings on OSX'

echo 'Disabling Screen Saver'
defaults -currentHost write com.apple.screensaver idleTime 0

echo 'Disabling Hot Corners'
defaults write com.apple.dock wvous-tl-corner -int 1
defaults write com.apple.dock wvous-bl-corner -int 1
defaults write com.apple.dock wvous-tr-corner -int 1
defaults write com.apple.dock wvous-br-corner -int 1

echo 'Moving Preferred Background into Desktop Pictures Folder'
cp within.png /Library/Desktop\ Pictures

echo 'Setting wallpaper on all desktops'
sudo -u ${SUDO_USER} osascript -e 'tell application "System Events" to key code 18 using control down'
sleep 1
sudo -u ${SUDO_USER} osascript -e 'tell application "System Events" to set picture of current desktop to "/Library/Desktop Pictures/within.png"'
sleep 0.5

for i in `seq 1 8`;
do
	sudo -u ${SUDO_USER} osascript -e 'tell application "System Events" to key code 124 using control down'
	sleep 1
	sudo -u ${SUDO_USER} osascript -e 'tell application "System Events" to set picture of current desktop to "/Library/Desktop Pictures/within.png"'
	sleep 0.5
done

sudo -u ${SUDO_USER} osascript -e 'tell application "System Events" to key code 18 using control down'
sleep 1
sudo -u ${SUDO_USER} osascript -e 'tell application "System Events" to set picture of current desktop to "/Library/Desktop Pictures/within.png"'
sleep 0.5

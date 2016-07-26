# Confirm Install
while true; do
    read -p "Do you wish to update ToggleTouchBETA? (y/n)        " yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) echo "Quiting ToggleTouchBETA updater."; exit;;
        * ) echo "  invalid input";;
    esac
done

#mkdir ~/.toggletouch
mv ~/ToggleTouch.sh ~/.toggletouch/ToggleTouch.sh
chmod +x ~/.toggletouch/ToggleTouch.sh
echo "Acquiring root permission to complete update."
sudo cp ~/.toggletouch/ToggleTouch.sh /usr/bin/toggletouch
sudo chmod +x /usr/bin/toggletouch

#create state file
#while true; do
#    read -p "Is your touchscreen currently enabled (in the 'on' state)? (y/n)        " yn
#    case $yn in
#        [Yy]* ) echo "ON" > ~/.toggletouch/touchscreen.state; echo "Current touchscreen state recognised as 'enabled'"; break;;
#        [Nn]* ) echo "OFF" > ~/.toggletouch/touchscreen.state; echo "Current touchscreen state recognised as 'disabled'"; break;;
#        * ) echo "  invalid input";;
#    esac
#done
#sudo chmod ugo+rw ~/.toggletouch/touchscreen.state

mv ~/update-toggletouch.sh ~/.toggletouch/update-archived.sh
sleep 1
echo "ToggleTouchBETA update successful."

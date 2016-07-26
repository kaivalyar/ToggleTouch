# Confirm Install
while true; do
    read -p "Do you wish to install ToggleTouchBETA? (y/n)        " yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) echo "Quiting ToggleTouchBETA installer."; exit;;
        * ) echo "  invalid input";;
    esac
done

mkdir ~/.toggletouch
mv ~/ToggleTouch.sh ~/.toggletouch/ToggleTouch.sh
chmod +x ~/.toggletouch/ToggleTouch.sh
echo "Root permission required for completing installation."
sudo cp ~/.toggletouch/ToggleTouch.sh /usr/bin/toggletouch
sudo chmod +x /usr/bin/toggletouch

#create state file
while true; do
    read -p "Is your touchscreen currently enabled (in the 'on' state)? (y/n)        " yn
    case $yn in
        [Yy]* ) echo "ON" > ~/.toggletouch/touchscreen.state; echo "Current touchscreen state recognised as 'enabled'"; break;;
        [Nn]* ) echo "OFF" > ~/.toggletouch/touchscreen.state; echo "Current touchscreen state recognised as 'disabled'"; break;;
        * ) echo "  invalid input";;
    esac
done
sudo chmod ugo+rw ~/.toggletouch/touchscreen.state

mv ~/install-toggletouch.sh ~/.toggletouch/install-archived.sh
sleep 1
echo "ToggleTouchBETA installation successful."
echo "Please use the terminal command 'toggletouch' to toggle your touchscreen on and off"

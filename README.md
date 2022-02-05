# sensorAutomaticReset
- Automatic Reset/setting of Sparkfun OLA boards while charging using Raspberry Pi
- Whenever you connect the OLA to a raspberry pi it will open arduino and restarts the OLA 
- Potentially useful to run any program, download the data, or change the settings on the OLA

## Install arudino IDE on raspberry pi for setting the OLA on Raspberry Pi
```sudo apt install arduino ```

more here: https://www.raspberrypi-spy.co.uk/2020/12/install-arduino-ide-on-raspberry-pi/

## Install CH340 driver on your Pi
- Solution1: execute the install_driver.sh (```bash```ruby or make it executable ```chmod +x```)
- Solution2: do the following in a terminal:
```
sudo apt-get update
sudo apt-get upgrade
cd %into the directory where the files are saved
make clean
make
sudo make load
sudo rmmod ch341 % to uninstall the previous driver
lsmod | grep ch34 % to list what modules are currently installed
```

Plug and unplug your CH340 device again on the USB port

```
dmesg
```

Expected output (should show "ch34x" now):
```
[  xxx] ch34x ttyUSB0: ch34x converter now disconnected from ttyUSB0
[  xxx] ch34x 3-2:1.0: device disconnected
```

- more here: https://learn.sparkfun.com/tutorials/how-to-install-ch340-drivers/linux

## Create an autostart 
- Solution1: Copy the file "clock.desktop" to this directory: "/home/pi/.config/autostart" 
- Solution2: Open a terminal, and execute the following commands to create an autostart directory

```
mkdir /home/pi/.config/autostart
```

Then edit the autostart:
```
nano /home/pi/.config/autostart/clock.desktop
```

Give it the address to install_driver.sh for example if its on desktop: ```sh -c "/home/pi/Desktop/install_driver.sh & arduino"``` in front of Exec= entry.


- more here: https://forums.raspberrypi.com/viewtopic.php?t=294014


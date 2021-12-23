# sensorAutomaticReset
Automatic Reset of Sparkfun OLA sensors while charging using Raspberry Pi

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

more here: https://learn.sparkfun.com/tutorials/how-to-install-ch340-drivers/linux
- 

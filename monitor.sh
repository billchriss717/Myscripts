#!/bin/bash
device=$(ls /dev | grep ttyUSB)
if [ "$device" == ttyUSB1 ]; then
	sudo chmod +666 /dev/ttyUSB1
	arduino-cli monitor -p /dev/ttyUSB1 -b arduino:avr:nano
elif [ "$device" == ttyUSB0 ]; then
	sudo chmod +666 /dev/ttyUSB0
	arduino-cli monitor -p /dev/ttyUSB0 -b arduino:avr:nano
else
	echo "No device connected"
fi
# device=$(ls /dev | grep ttyACM)
# if [ "$device" == ttyACM0 ]; then
# 	sudo chmod +666 /dev/ttyACM0
# 	arduino-cli monitor -p /dev/ttyACM0 -b arduino:avr:uno
# elif [ "$device" == ttyACM1 ]; then
# 	sudo chmod +666 /dev/ttyACM1
# 	arduino-cli monitor -p /dev/ttyACM0 -b arduino:avr:uno
# else
# 	echo "No device connected"
# fi

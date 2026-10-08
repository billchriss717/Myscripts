#!/bin/bash
device=$(ls /dev | grep ttyUSB)
if [ "$device" == ttyUSB0 ]; then
	sudo chmod +666 /dev/ttyUSB0
	arduino-cli upload -b arduino:avr:nano:cpu=atmega328 -p /dev/ttyUSB0 -v
elif [ "$device" == ttyUSB1 ]; then
	sudo chmod +666 /dev/ttyUSB1
	arduino-cli upload -b arduino:avr:nano:cpu=atmega328 -p /dev/ttyUSB1 -v
else
	echo "No device connected"
fi
# device=$(ls /dev | grep ttyACM)
# if [ "$device" == ttyACM0 ]; then
# 	sudo chmod +666 /dev/ttyACM0
# 	arduino-cli upload -b arduino:avr:uno -p /dev/ttyACM0 -v
# elif [ "$device" == ttyACM1 ]; then
# 	sudo chmod +666 /dev/ttyACM1
# 	arduino-cli upload -b arduino:avr:uno -p /dev/ttyACM1 -v
# else
# 	echo "No device connected"
# fi

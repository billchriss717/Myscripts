#!/bin/bash
file=$1
# arduino-cli compile -b arduino:avr:uno $file
arduino-cli compile -b arduino:avr:nano:cpu=atmega328 $file

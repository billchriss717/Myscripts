#!/bin/bash

compile
read -p "Proceed with upload ?: " test
if [ "$test" == y ]; then
	upload
fi

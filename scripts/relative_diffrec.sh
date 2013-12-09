#!/bin/bash
if [ $# -lt 3 ]; then echo "Nb params < 3"; exit 1; fi
ABS_PATH=$(pwd)
./absolute_diffrec.sh $ABS_PATH/$1 $ABS_PATH/$2 $ABS_PATH/$3 $ABS_PATH

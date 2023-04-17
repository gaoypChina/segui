#!/bin/bash

CONFIG=config.json
OUTPUT=segui.dmg
cd installer/
if [ -f $OUTPUT ]; then
    rm $OUTPUT
fi

appdmg $CONFIG $OUTPUT

if [ -f $OUTPUT ]; then
    open $OUTPUT
fi
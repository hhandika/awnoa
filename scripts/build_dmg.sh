#!/bin/bash

CONFIG=config.json
OUTPUT=awnoa.dmg
cd installer/
if [ -f $OUTPUT ]; then
    rm $OUTPUT
fi

appdmg $CONFIG $OUTPUT

if [ -f $OUTPUT ]; then
    open $OUTPUT
fi
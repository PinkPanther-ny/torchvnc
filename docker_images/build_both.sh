#!/bin/bash

wd=`pwd`
echo ""
echo "Building empty conda vnc"
echo ""
cd ${wd}/emptyconda_vnc && sudo docker build -t alvin529/emptyconda_vnc:latest .
echo "Done!"
echo ""
echo "================================================================"
echo "Building vnc with opencv and torch v1.11+cu113"
echo ""
cd ${wd}/torchvnc && sudo docker build -t alvin529/torchvnc:latest .
echo "Done!"
echo ""

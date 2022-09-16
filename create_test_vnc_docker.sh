#!/bin/bash


mkdir -p testdocker
cp create_torchvnc.sh testdocker/
cd testdocker && mkdir -p data && ./create_torchvnc.sh

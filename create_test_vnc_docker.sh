#!/bin/bash


mkdir testdocker
cp create_torchvnc.sh testdocker/
cd testdocker && mkdir data && ./create_torchvnc.sh

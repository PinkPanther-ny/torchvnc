#!/bin/bash


sudo docker pull alvin529/torchvnc:latest

array=()
varname=("VNCPassword" "ContainerName" "PortPrefix")
defval=("123" "torchvnc" "320")

for i in $(seq 0 2)
do
   type=${varname[i]}
   typeval=${defval[i]}
   input=""

   read -p "Enter your ${type}[default '${typeval}']: " input
   if [ "$input" == "" ]; then
      input="$typeval"
   fi

   array+=("${input}")
done

HostData=`pwd`/data
mkdir -p $HostData

ImageName="alvin529/torchvnc:latest"
ContainerName=${array[1]}
PortPrefix=${array[2]}

echo Make new container, name is ${ContainerName}, image is ${ImageName}, port_prefix is ${PortPrefix}
sudo docker run -itd \
   --runtime=nvidia --gpus=all \
   -e NVIDIA_DRIVER_CAPABILITIES=compute,utility,video,graphics \
   -e RESOLUTION=1920x1080 \
   -e VNC_PASSWORD=${array[0]} \
   -v /:/host_root_dir \
   -v ${HostData}:/datav \
   -p ${PortPrefix}80:80 \
   -p ${PortPrefix}90:5900 \
   -p ${PortPrefix}22:22 \
   --name $ContainerName --privileged=true \
   -v /dev/shm:/dev/shm \
   ${ImageName} \
   /bin/bash

echo Done, Unity VNC Port is ${PortPrefix}90

echo ""
echo "Complete but cannot guarantee success, please check if there are any docker errors!"
echo ""
echo "./data folder is linked to /datav in container, host root is linked to /host_root_dir"
echo "Please connect via vnc software, with this machine ip address and port prefix + 90"
echo ""
echo "eg: connect vnc to 10.16.101.168 and port 32090"
echo ""

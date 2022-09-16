Run script to create docker with specific port, connect via vnc software.


===============================================================================================

git clone https://github.com/PinkPanther-ny/torchvnc_docker

cd torchvnc_docker

./create_test_vnc_docker.sh


将新建
torchvnc_docker/data目录，此目录在docker中链接到 /datav
另外，主机的根目录链接到docker中的/host_root_dir
以便于浏览数据及其他操作，需谨慎。

远程桌面直接用vnc软件连接 {主机ip}：{端口前缀}+90

首次进入docker建议conda init，
conda环境中自带python3.9，pytorch1.12+cu113，以及opencv


docker_images目录下的两个Dockerfile则是如何构建此镜像的源码，可以用来学习dockerfile的基本操作

----Alvin

===============================================================================================

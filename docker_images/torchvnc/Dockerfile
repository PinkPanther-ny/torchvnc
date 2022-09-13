FROM alvin529/emptyconda_vnc:latest
USER root
# Install base utilities
RUN apt-get update && \
#    apt-get install -y build-essentials --no-cache && \
    apt-get install -y wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
# https://repo.anaconda.com/miniconda/Miniconda3-py39_4.9.2-Linux-x86_64.sh
# Install miniconda


ENV CONDA_DIR /opt/conda
RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-py39_4.9.2-Linux-x86_64.sh -O /root/miniconda.sh && \
     /bin/bash /root/miniconda.sh -b -p /opt/conda

# Put conda in path so we can use conda activate
ENV PATH=$CONDA_DIR/bin:$PATH


COPY  torch-1.11.0+cu113-cp39-cp39-linux_x86_64.whl .
COPY  opencv_python-4.6.0.66-cp36-abi3-manylinux_2_17_x86_64.manylinux2014_x86_64.whl .
RUN conda init
RUN which pip
RUN pip install numpy -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install torch-1.11.0+cu113-cp39-cp39-linux_x86_64.whl
RUN pip install torchvision==0.12.0+cu113 torchaudio==0.11.0 --extra-index-url https://download.pytorch.org/whl/cu113
RUN pip install  opencv_python-4.6.0.66-cp36-abi3-manylinux_2_17_x86_64.manylinux2014_x86_64.whl

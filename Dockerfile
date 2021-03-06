#################################################################
# Dockerfile
#
# Software Version: canu1.7.1
# Description:      canu1.7.1 base on docker- A single molecule sequence assembler for genomes large and small
# Code:             https://github.com/marbl/canu
# Base Image:       conda/miniconda3
# Build Cmd:        sudo docker build -t cgwyx:canu .
# Pull Cmd:         docker pull cgwyx/canu
# Run Cmd:          sudo docker run -it --rm -v /home:/home --name=canu cgwyx/canu:latest /bin/bash
# File Author / Maintainer: cheng gong <512543469@qq.com>
#################################################################

FROM conda/miniconda3

RUN conda update --all -y &&\
    conda config --add channels conda-forge &&\
    conda config --add channels r &&\
    conda config --add channels bioconda &&\
    conda config --set show_channel_urls yes &&\
    conda install -y -c bioconda canu=1.7.1

CMD ["/bin/bash"]



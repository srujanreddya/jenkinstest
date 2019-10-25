FROM bluedata/centos7:latest

RUN sudo yum install perl bzip2 pciutils -y
RUN yum -y install kernel-devel-uname-r epel-release gcc gcc-c++ python-pip python-devel atlas atlas-devel gcc-gfortran openssl-devel libffi-devel


##Anaconda3 Installation
RUN wget https://repo.anaconda.com/archive/Anaconda3-2018.12-Linux-x86_64.sh -P /opt && \
    chmod +x /opt/Anaconda3-2018.12-Linux-x86_64.sh && \
    /opt/Anaconda3-2018.12-Linux-x86_64.sh -b -p /opt/anaconda3  && \
    rm /opt/Anaconda3-2018.12-Linux-x86_64.sh 

ADD updatePath.sh /etc/profile.d/updatePath.sh

RUN chmod +x /etc/profile.d/updatePath.sh && \
    source /etc/profile.d/updatePath.sh && \
    conda create -y -n tensorflow3 python=3.6

RUN source /etc/profile.d/updatePath.sh && \
    source activate tensorflow3 && \
    conda install -c conda-forge jupyterhub && \
    conda install -c conda-forge nodejs && \
    pip install tensorflow==1.9.0 && \
    pip install matplotlib && \
    pip install jupyterlab && \
    jupyter serverextension enable --py jupyterlab --user && \ 
    pip install notebook --upgrade

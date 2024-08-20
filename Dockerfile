FROM  nvidia/cuda:12.2.2-devel-ubuntu20.04
ENV PATH /opt/conda/bin:$PATH
WORKDIR /opt/app

RUN apt-get update --fix-missing && \
    apt-get install -y wget git&& \
    apt-get clean

COPY requirements.txt .

RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh 
RUN /bin/bash ~/miniconda.sh -b -p /opt/conda 

RUN echo "source activate base" > ~/.bashrc
RUN conda install -y python=3.9
RUN conda install -y pytorch==2.1.1 pytorch-cuda=12.1 -c pytorch -c nvidia
RUN pip install --no-cache-dir -r requirements.txt

CMD ["bash"]

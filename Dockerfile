FROM ubuntu:16.04

RUN apt-get update && \
        apt-get install -y firefox && \
        apt-get clean

RUN groupadd --gid 1000 user && \
        useradd --uid 1000 --gid 1000 --create-home user

RUN apt-get install -y zlib1g-dev
RUN apt-get install -y libhdf5-dev
RUN apt-get install -y python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install jupyter
RUN apt-get install -y python3-tables
RUN pip3 install tensorflow
RUN apt-get install -y libjpeg-dev
RUN pip3 install Pillow
RUN pip3 install scikit-image
RUN pip3 install -U tflearn
USER user
CMD jupyter notebook

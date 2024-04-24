FROM ubuntu:22.04

RUN apt-get update
RUN apt-get dist-upgrade -y

# Dependencies
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y \
    python3-pip \
    g++ \
    libboost-all-dev \
    libgmp3-dev \
    gap \
    nauty

# Python Dependencies
RUN pip3 install networkx
RUN pip3 install typed-argument-parser
RUN pip3 install argcomplete

# Extra Utilities (Optional)
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y \
    zip \
    less \
    nano \
    git

# Build
WORKDIR /root
RUN git clone https://github.com/Frederico-Messa/And-Star-Project
WORKDIR /root/And-Star-Project
RUN make

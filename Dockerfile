FROM ubuntu:24.04

# Alias to simplify the installation of packages
ENV APT_INSTALL="apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y"

# Cloning the repository
RUN sh -c "$APT_INSTALL git"
WORKDIR /root/And-Star-Project
RUN git clone https://github.com/Frederico-Messa/And-Star-Project .
RUN git submodule update --init --recursive

# Building the project
RUN sh -c "$APT_INSTALL make g++ libboost-all-dev libgmp3-dev"
RUN make

# Installing the remaining dependencies
RUN sh -c "$APT_INSTALL python3 python3-pip gap nauty"
RUN python3 -m pip install --break-system-packages -r requirements.txt

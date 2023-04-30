FROM ubuntu:22.04

RUN apt-get update \
  && apt-get install -y \
    curl wget vim python3.9 python3-pip \
    git

# Install Foundry
RUN curl -L https://foundry.paradigm.xyz | bash
RUN /root/.foundry/bin/foundryup

# Install Halmos
RUN pip install halmos

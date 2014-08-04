FROM bradrydzewski/node:0.10

MAINTAINER thiagopnts "thiago.pontes@corp.globo.com"

WORKDIR /home/ubuntu

USER ubuntu

ENV DISPLAY :99

RUN sudo apt-get update

# Install Chrome
ADD setup-chrome.sh /tmp/setup-chrome.sh
RUN sudo chmod +x /tmp/setup-chrome.sh
RUN /tmp/setup-chrome.sh

FROM bradrydzewski/ruby:1.9.3

MAINTAINER thiagopnts "thiago.pontes@corp.globo.com"

WORKDIR /home/ubuntu

USER ubuntu

RUN sudo apt-get update

# Install Chrome
ADD setup-env.sh /tmp/setup-env.sh
RUN sudo chmod +x /tmp/setup-env.sh
RUN /tmp/setup-env.sh


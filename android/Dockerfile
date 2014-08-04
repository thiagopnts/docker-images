FROM bradrydzewski/java:oraclejdk7

MAINTAINER thiagopnts "thiago.pontes@corp.globo.com"

WORKDIR /home/ubuntu

USER ubuntu

ENV ANDROID_HOME /opt/android-sdk-linux
ENV GRADLE /opt/gradle-1.12-bin/

ENV PATH /opt/android-sdk-linux/tools:/opt/android-sdk-linux/platform-tools:/opt/gradle-1.12/bin:$PATH

ADD setup-adt.sh /tmp/setup-adt.sh
RUN sudo chmod +x /tmp/setup-adt.sh
RUN /tmp/setup-adt.sh

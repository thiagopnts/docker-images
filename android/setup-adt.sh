#!/bin/bash

SDK=android-sdk_r23.0.2-linux
GRADLE=gradle-1.12-bin
SCALA=scala-2.11.2.deb
IA32LIBS=ia32-libs-i386_0.4_i386.deb

sudo apt-get update
sudo apt-get install -y unzip lib32z1 lib32ncurses5 lib32bz2-1.0

wget http://dl.google.com/android/$SDK.tgz
wget https://services.gradle.org/distributions/$GRADLE.zip
wget http://www.scala-lang.org/files/archive/$SCALA
wget http://ftp.acc.umu.se/debian/pool/main/i/ia32-libs/ia32-libs-i386_0.4_i386.deb

tar -zxf $SDK.tgz
unzip $GRADLE.zip
sudo dpkg -i $SCALA
sudo dpkg -i $IA32LIBS
sudo apt-get -f install

sudo mv android-sdk-linux /opt/
sudo mv gradle-1.12 /opt

(while :
do
  echo 'y'
  sleep 2
done) | android update sdk -u -t android-19,extra,platform-tool,tool,build-tools-20.0.0


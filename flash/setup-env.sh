#!/bin/bash
export CHROME=google-chrome-stable_current_amd64.deb
wget https://dl.google.com/linux/direct/$CHROME
sudo dpkg --install $CHROME || sudo apt-get -f install

if [ -f /opt/google/chrome/chrome-sandbox ]; then
  export CHROME_SANDBOX=/opt/google/chrome/chrome-sandbox
else
  export CHROME_SANDBOX=$(ls /opt/google/chrome*/chrome-sandbox)
fi

/home/ubuntu/.rbenv/bin/rbenv install 1.9.3-p194

echo "export DISPLAY=:99" >> /home/ubuntu/.bashrc
echo "export RBENV_VERSION=1.9.3-p194" >> /home/ubuntu/.bashrc

/home/ubuntu/.rbenv/versions/1.9.3-p194/bin/gem install bundler

sudo service xvfb start

# Download a custom chrome-sandbox which works inside OpenVC containers.
sudo rm -f $CHROME_SANDBOX
sudo wget https://googledrive.com/host/0B5VlNZ_Rvdw6NTJoZDBSVy1ZdkE -O $CHROME_SANDBOX
sudo chown root:root $CHROME_SANDBOX; sudo chmod 4755 $CHROME_SANDBOX
sudo md5sum $CHROME_SANDBOX

google-chrome --version


#! /bin/bash

# install tools
apt-get update
apt-get install -y python-software-properties
add-apt-repository -y ppa:git-core/ppa
apt-get update
apt-get install -y git
apt-get install -y nfs-common portmap

# install go
wget https://storage.googleapis.com/golang/go1.8.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.8.linux-amd64.tar.gz

# configure golang for all users
mkdir -p /gopath
echo GOROOT=/usr/local/go >> /etc/environment
echo GOPATH=/usr/local/gopath >> /etc/environment
echo GOBIN=/usr/local/gopath/bin >> /etc/environment

# add golang to path for vagrant and root
su vagrant -c "echo 'PATH=\$PATH:\$GOBIN:\$GOROOT/bin' >> ~/.profile"
echo PATH=$PATH:$GOBIN:$GOROOT/bin >> ~/.profile

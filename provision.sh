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
mkdir /gopath

# configure golang for vagrant user
su vagrant -c "echo 'GOROOT=/usr/local/go' >> ~/.profile"
su vagrant -c "echo 'GOPATH=/gopath' >> ~/.profile"
su vagrant -c "echo 'GOBIN=\$GOPATH/bin' >> ~/.profile"
su vagrant -c "echo 'PATH=\$PATH:\$GOBIN' >> ~/.profile"
su vagrant -c "mkdir -p /home/vagrant/gocode"

# configure golang for new shells (like root)
echo GOROOT=/usr/local/go >> ~/.profile
echo GOPATH=/gopath >> ~/.profile
su vagrant -c "echo 'GOBIN=\$GOPATH/bin' >> ~/.profile"
su vagrant -c "echo 'PATH=\$PATH:\$GOBIN' >> ~/.profile"
su vagrant -c "mkdir -p /home/vagrant/gocode"


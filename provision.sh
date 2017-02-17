#! /bin/bash

# install tools
apt-get update
apt-get install -y python-software-properties
add-apt-repository -y ppa:git-core/ppa
apt-get update
apt-get install -y git
apt-get install -y nfs-common portmap

# configure golang
su vagrant -c "echo 'GOROOT=/usr/local/go' >> ~/.profile"
su vagrant -c "echo 'GOPATH=/home/vagrant/gocode' >> ~/.profile"
su vagrant -c "echo 'GOBIN=\$GOPATH/bin' >> ~/.profile"
su vagrant -c "echo 'PATH=\$PATH:\$GOBIN' >> ~/.profile"
su vagrant -c "mkdir -p /home/vagrant/gocode"

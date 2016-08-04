#!/bin/bash

GO_VERSION=1.6.3
GO_OS=linux
GO_ARCH=amd64
GO_DIR=/usr/local/go/
GO_TMP=/tmp/
GO_TMP_PATH=$HOME/gowork/

#check to see if go is already installed
GO_EXISTS=$([ -d $GO_DIR ] && echo "Y" || echo "N")
if [[ $GO_EXISTS == "Y" ]]
then
	echo "GO already installed"
else
	#pre enviornment - assumes first time running this script
	sudo apt-get update
	sudo apt-get -y upgrade
	sudo apt-get -y install git

	echo "Installing Go"
	cd $GO_TMP
	sudo curl -O https://storage.googleapis.com/golang/go$GO_VERSION.$GO_OS-$GO_ARCH.tar.gz
	sudo tar -C /usr/local -xzf go$GO_VERSION.$GO_OS-$GO_ARCH.tar.gz
	cd
fi

#add go ccommands to your path
sed -i "$ a\export PATH=\$PATH:$GO_DIR/bin" ~/.profile

#create your workspace (GOPATH)
mkdir $GO_TMP_PATH
sed -i "$ a\export GOPATH=$GO_TMP_PATH" ~/.profile

source ~/.profile

#create and execute your first go project
mkdir -p $GOPATH/src/deleteme/
cd $GOPATH/src/deleteme/
wget https://raw.githubusercontent.com/cboecking/golang-env-setup/master/deleteme.go
go install deleteme
$GOPATH/bin/deleteme

#go to home directory
cd

echo "NOTE: If the installation was successful, you should see a "Hello, World" message just above this line."

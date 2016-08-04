#!/bin/bash

GO_VERSION=1.6.3
GO_OS=linux
GO_ARCH=amd64
GO_DIR=/usr/local/go/
GO_TMP=/tmp/

#check to see if go is already installed
GO_EXISTS=$([ -d $GO_DIR ] && echo "Y" || echo "N")
if [ $RESULT == "Y" ]; then
	echo "GO already installed"
else
	cd $GO_TMP
	sudo curl -O https://storage.googleapis.com/golang/go$GO_VERSION.$GO_OS-$GO_ARCH.tar.gz
	sudo tar -C /usr/local -xzf go$GO_VERSION.$GO_OS-$GO_ARCH.tar.gz
fi

sed -i "$ a\export PATH=\$PATH:$GO_DIR/bin" ~/.profile

mkdir ~/gowork

sed -i "$ a\export GOPATH=\$HOME/gowork" ~/.profile

source ~/.profile


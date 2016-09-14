#!/bin/bash

GO_VERSION=1.7.1
GO_OS=linux
GO_ARCH=amd64
GO_PATH=/usr/local/go/
GO_TMP=/tmp/
GO_WORKSPACE_PATH=$HOME/gowork/

#check to see if go is already installed
GO_EXISTS=$([ -d $GO_PATH ] && echo "Y" || echo "N")
if [[ $GO_EXISTS == "Y" ]]
then
	echo "HERE: GO already installed"
else
	echo "HERE: Installing Go"
	#pre enviornment - assumes first time running this script
	
	#add add-apt-repository - needed for chromebook crouton
	sudo apt-get install software-properties-common python-software-properties -y
	
	#get the latest version of Vim
	sudo add-apt-repository ppa:pkg-vim/vim-daily -y
	
	#get the latest version of Neovim
	sudo add-apt-repository ppa:neovim-ppa/unstable -y
	
	sudo apt-get update
	sudo apt-get -y upgrade
	sudo apt-get -y install git vim curl tmux neovim htop zsh httpie mercurial

	sudo curl -fLo $GO_TMP/go$GO_VERSION.$GO_OS-$GO_ARCH.tar.gz https://storage.googleapis.com/golang/go$GO_VERSION.$GO_OS-$GO_ARCH.tar.gz
	sudo tar -C /usr/local -xzf $GO_TMP/go$GO_VERSION.$GO_OS-$GO_ARCH.tar.gz
	echo "HERE: Installing Go - DONE"
fi

echo "HERE: Update profile for go"
#add go ccommands to your path
sed -i "$ a\export PATH=\$PATH:$GO_PATH/bin" ~/.profile

#create your workspace (GOPATH)
mkdir $GO_WORKSPACE_PATH
sed -i "$ a\export GOPATH=$GO_WORKSPACE_PATH" ~/.profile

#add your workspace go programs to your path
sed -i "$ a\export PATH=\$PATH:$GO_WORKSPACE_PATH/bin" ~/.profile

#create a tmux shortcut that sets tmux to use 256 colors
sed -i "$ a\alias tm=\"tmux -2\"" ~/.profile

#add common tools I use to .profile
curl https://raw.githubusercontent.com/cboecking/golang-env-setup/master/profile_additions >> ~/.profile

#reload your profile
source ~/.profile

echo "HERE: Update profile for go - DONE"
echo "HERE: Download config files and plugins for tmux and vim"

#create tmux config file
wget ~/.tmux.conf https://raw.githubusercontent.com/cboecking/golang-env-setup/master/.tmux.conf

#install vim plugin manager (vim-plug)
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#install vim-go
git clone https://github.com/fatih/vim-go.git ~/.vim/plugged/vim-go

#get Fatih .vimrc
wget -P ~/ https://raw.githubusercontent.com/cboecking/golang-env-setup/master/.vimrc

#install vim molokai color - needed to prevent VIM from complaining about missing color
wget -P ~/.vim/colors/ https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim

#tell vim to install all necessary Go tools
vim -c 'set nomore' -c "GoInstallBinaries" -c "qa"

#tell vim to install all listed plugins
vim -c "PlugInstall" -c "qa"

#remove molokai color since added by plugin manager
rm -f ~/.vim/colors/molokai.vim

echo "HERE: Download config files and plugins for tmux and vim - DONE"
echo "HERE: Install and configure zsh"

#get clone of oh-my-zsh repo
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

#create default .zshrc
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

#changing the zsh theme to one that is nice and friendly to most terminals
sudo sed -i "s|ZSH_THEME=\"robbyrussell\"|ZSH_THEME=\"ys\"|" ~/.zshrc

echo "HERE: Install and configure zsh - DONE"

#zsh ACTION NEEDED if desired: Modify the /etc/passwd file to set zsh as your username's default
#look for something like this:
#ubuntu:x:1000:1000:Ubuntu:/home/ubuntu:/bin/bash
#replace the bash with zsh like this:
#ubuntu:x:1000:1000:Ubuntu:/home/ubuntu:/bin/zsh

#allow Neovim to use Vim's config - note Neovim does not seem ready yet
#mkdir -p ~/.config/nvim/
#ln -s ~/.vim ~/.config/nvim
#ln -s ~/.vimrc ~/.config/nvim/init.vim

echo "HERE: Create your first go project"

#create and execute your first go project
mkdir -p $GOPATH/src/deleteme/
wget -P $GOPATH/src/deleteme/ https://raw.githubusercontent.com/cboecking/golang-env-setup/master/deleteme.go
go install deleteme
$GOPATH/bin/deleteme

echo "HERE: Create your first go project - DONE"

echo "NOTE: If the installation was successful, you should see a "Hello, World" message just above this line."

echo "go get common packages."
go get -u github.com/goadesign/goa/...
go get -u github.com/goadesign/gorma/...
go get -u github.com/goadesign/goa-cellar/...
go get -u github.com/goadesign/gorma-cellar/...

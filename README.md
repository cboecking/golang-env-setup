# golang-env-setup

The purpose of this project is to help me quickly setup a go development environment using either an Ubuntu server or a Chromebook. I created an installation script because (1) I am lazy, (2) I tear down and re-create enviornments all the time, and (3) I want my enviornments to be the same everywhere everytime so that I become proficent with the tools. 

# Installation

Execute the following line from an Ubuntu 14.04 or newer server (see below for Chromebook details):

source <(curl -s https://raw.githubusercontent.com/cboecking/golang-env-setup/master/go_install.sh)

# Installation Notes

1. The script assumes you want to use terminal-based authoring tools
2. It installs go (golang)
3. It installs and executes a sample project to confirm all worked as expected
4. It configures vim with the vim-go development environment
5. It installs tmux so that you can create and share terminal sessions

# Using Chromebook

[My Chromebook](https://www.amazon.com/Toshiba-Chromebook-CB35-C3300-Backlit-Keyboard/dp/B015806LSQ/) is proving to be a great development platform for go. It has a 4-core i3 Intel processor, and the 4GB of RAM seem to be enough given how little ChromeOS and ubuntu server consume. I am impressed how easy it is to install ubuntu server behind the scenes and access it directly through the ChromeOS terminal.

# Configuring Chromebook for Development

1. Put chromebook in developer mode.

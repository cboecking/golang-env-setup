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

# Using Chromebook for Golang Development

[My Chromebook](https://www.amazon.com/Toshiba-Chromebook-CB35-C3300-Backlit-Keyboard/dp/B015806LSQ/) is proving to be a great development platform for go. It has a 4-core i3 Intel processor, and the 4GB of RAM seem to be enough given how little ChromeOS and Ubuntu cli consume. If you want more RAM, consider [this machine](https://www.amazon.com/dp/B01F8NNY0G/ref=s9_acsd_bw_wf_a_GGLWFSCB_cdl_4).

I am surprised and impressed how easy it is to install Ubuntu behind the scenes and access it directly through the ChromeOS terminal.

# Configuring Chromebook for Development ([more](http://www.davebennett.tech/install-ubuntu-14-04-on-chromebook/))

1. Put chromebook in developer mode. In my case:
  2. Press Esc + Refresh function key + Power ==> to enter recovery mode
  3. When the white screen comes up, press Ctrl-d ==> to enter developer mode
4. Log into Chrome when it finally boots back up
6. Download [crouton](https://github.com/dnschneid/crouton) ([direct](https://goo.gl/fd3zc))
7. Install the Chrome plug-ins listed in the below section
6. Press Ctrl-Alt-t to open a terminal window then type 'shell'
7. Go to the downloads directory using: cd ~/Download
8. Make crouton executable using: chmox +x crouton
9. Execute crouton to install a cli version of Ubuntu 14.04 using: sudo sh crouton -r trusty -t cli-extra
10. Create a pristine backup of your new Ubuntu installation using: sudo edit-chroot -b trusty
11. Rename your backup file to include the word 'pristine' for future reference
11. Start using Ubuntu from a terminal->shell using: sudo enter-chroot
11. Note: I created an alias in my ~/.bashrc of 'ec' to execute: sudo enter-chroot
12. Once you reach your Ubuntu prompt, install curl using: sudo apt-get install curl -y
13. Install and configure your go environment using the command listed at the top of this page.

# Chrome Plug-ins

1. [Secure Shell](https://chrome.google.com/webstore/detail/secure-shell/pnhechapfaindjhompbnflcldabbghjo?hl=en)
2. [Crosh Window](https://chrome.google.com/webstore/detail/crosh-window/nhbmpbdladcchdhkemlojfjdknjadhmh?hl=en-US) - allows you to open a secure shell in a separate window.

# Crouton References

1. [Main crouton page](https://github.com/dnschneid/crouton)
2. [List of commands](https://github.com/dnschneid/crouton/wiki/Crouton-Command-Cheat-Sheet)

# golang-env-setup
The purpose of this project is to configure a new ubuntu go development environment for a new user. I am lazy, and I do not like remembering the details.

Execute the following line to install and configure go in your environment:

source <(curl -s https://raw.githubusercontent.com/cboecking/golang-env-setup/master/go_install.sh)

Notes:

1. This script assumes you are using a debian based distro (apt-get).
2. It installs go (golang)
3. It installs and executes a sample project to confirm all worked as expected.
4. It configures vim with the vim-go development environment

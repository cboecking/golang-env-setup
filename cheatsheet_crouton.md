#### References
* [list of common commands](https://github.com/dnschneid/crouton/wiki/Crouton-Command-Cheat-Sheet)
* [crouton github.com](https://github.com/dnschneid/crouton)

#### Installation CLI
* Download crouton to Downloads folder. See link in [crouton github.com](https://github.com/dnschneid/crouton#usage).
* `cd ~/Downloads`
* 14.04 `sudo sh crouton -r trusty -t cli-extra`
* 16.04 `sudo sh crouton -r xenial -t cli-extra`
* Note: the instance is named either 'trusty' or 'xenial' unless you offer a `-n custom_name`
* note: I recommend you create a pristine (chrootname-pristine.tar.gz) backup after you finish your installation (see below).
* start: `ec` or `ec -n NAME_OF_INSTALL` example: `ec -n xenial`
* NOTE: The `ec` is an alias for `enter-chroot`. This alias is created during the `go_install.sh` script.

#### Installation xcfe Desktop
* install: `sudo sh ~/Downloads/crouton -t xfce,xiwi -n xenialxfce`
* start xfce: `sudo startxfce4`
* set locale
  * `sudo apt-get update -y`
  * `sudo locale-gen "en_US.UTF-8"`
  * `sudo dpkg-reconfigure locales`
  * reboot and execute "locale" from terminal to confirm
  * NOTE: [need update script without prompts](http://serverfault.com/questions/362903/how-do-you-set-a-locale-non-interactively-on-debian-ubuntu)
* Common tools/tweeks:
  * `sudo apt-get update -y`
  * `sudo apt-get install -y htop telnet vim chromium-browser leafpad bash-completion ubuntu-restricted-extras ttf-ubuntu-font-family xubuntu-icon-theme xfce4-whiskermenu-plugin xfce4-indicator-plugin`
  * `sudo apt-get purge -y xscreensaver`
  * Settings > Appearance: 
    * Fonts > check the "Enable anti-aliasing" box and under "hinting", select "slight"
    * Style > select Greybird
    * Icons > select Elementary Xfce
  * Settings > Panel > Add New Items, then select "Whisker Menu" and click "Add", then do the same for the "Indicator Plugin"
  * Settings > Keyboard, on the "Application Shortcuts" tab, click "Add" and use "xfce4-popup-whiskermenu" and map to Ctrl+Shift+w
* [Tweek Source](http://www.webupd8.org/2013/12/things-to-do-after-installing-ubuntu-on.html)

#### Common tasts
* List installations: `sudo edit-chroot -a` or `-al` to include version details
* Create backup: `sudo edit-chroot -b chrootname` - creates file named chrootname-yyyymmdd-hhmm.tar.gz.
* Restore of an existing instance: `sudo edit-chroot -r chrootname -f path_to_backup_file.tar.gz`

#### Misc tasks
* [Check speed of a disk - including SD Card](https://github.com/geerlingguy/raspberry-pi-dramble/issues/7)

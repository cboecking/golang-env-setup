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

#### Installation xcfe
* install: `sudo sh ~/Downloads/crouton -t xfce,xiwi -n xenialxfce`
* start xfce: `sudo startxfce4`
* switch between: `Ctrl+Alt+Shift+Back` and `Ctrl+Alt+Shift+Forward`
* set locale
  * `sudo locale-gen "en_US.UTF-8"`
  * `sudo dpkg-reconfigure locales`
  * reboot and execute "locale" from terminal to confirm
* Common tools/tweeks:
  * `sudo apt-get install -y telnet vim chromium-browser leafpad bash-completion ubuntu-restricted-extras ttf-ubuntu-font-family xubuntu-icon-theme xfce4-whiskermenu-plugin xfce4-indicator-plugin --no-install-recommends indicator-sound`
  * `sudo apt-get purge xscreensaver`
  * Settings Manager > Appearance, on the "Fonts" tab check the "Enable anti-aliasing" box and under "hinting", select "slight"
  * Settings Manager > Appearance > Style: select Numix or Greybird
  * Settings Manager > Window Manager > Style: select Numix or Greybird
  * Setting Manager > Appearance > Icons: select Elementary Xfce dark
  * Setting Manager > Mouse and Touchpad > Devices > TouchPad > disable mouse when typing for 1 second
  * Setting Manager > Panel > Add New Items, then select "Whisker Menu" and click "Add", then do the same for the "Indicator Plugin"
* [Tweek Source](http://www.webupd8.org/2013/12/things-to-do-after-installing-ubuntu-on.html)

#### Installation unity
* install: `sudo sh ~/Downloads/crouton -t unity,xiwi -n xenialunity`
* start unity: `sudo startunity`

#### Common tasts
* List installations: `sudo edit-chroot -a` or `-al` to include version details
* Create backup: `sudo edit-chroot -b chrootname` - creates file named chrootname-yyyymmdd-hhmm.tar.gz.
* Restore of an existing instance: `sudo edit-chroot -r chrootname -f path_to_backup_file.tar.gz`

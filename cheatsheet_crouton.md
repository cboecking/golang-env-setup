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
* install: `sudo sh ~/Downloads/crouton -t xfce -n xenialxfce`
* start xfce: `sudo startxfce4`
* switch between: `Ctrl+Alt+Shift+Back` and `Ctrl+Alt+Shift+Forward`
* Common tools:
  * `sudo apt-get install leafpad bash-completion ubuntu-restricted-extras ttf-ubuntu-font-family xubuntu-icon-theme`
  * `sudo apt-get purge xscreensaver`
  * `sudo apt-get install xfce4-whiskermenu-plugin xfce4-indicator-plugin`
  * `sudo apt-get install --no-install-recommends indicator-sound`
* [tweek Source] (http://www.webupd8.org/2013/12/things-to-do-after-installing-ubuntu-on.html)

#### Installation unity
* install: `sudo sh ~/Downloads/crouton -t unity,xiwi -n xenialunity`
* start unity: `sudo startunity`

#### Common tasts
* List installations: `sudo edit-chroot -a` or `-al` to include version details
* Create backup: `sudo edit-chroot -b chrootname` - creates file named chrootname-yyyymmdd-hhmm.tar.gz.
* Restore of an existing instance: `sudo edit-chroot -r chrootname -f path_to_backup_file.tar.gz`

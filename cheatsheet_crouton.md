####References
* [list of common commands](https://github.com/dnschneid/crouton/wiki/Crouton-Command-Cheat-Sheet)
* [crouton github.com](https://github.com/dnschneid/crouton)

####Installation
* Download crouton to Downloads folder. See link in [crouton github.com](https://github.com/dnschneid/crouton).
* `cd ~/Downloads`
* 14.04 `sudo sh crouton -r trusty -t cli-extra`
* 16.04 `sudo sh crouton -r xenial -t cli-extra`
* Note: the instance is named either 'trusty' or 'xenial' unless you offer a `-n custom_name`
* note: I recommend you create a pristine (chrootname-pristine.tar.gz) backup after you finish your installation (see below).

####Start instance
* `ec` or `ec -n NAME_OF_INSTALL` example: `ec -n xenial`
* NOTE: The `ec` is an alias for `enter-chroot`. This alias is created during the `go_install.sh` script.

####Common tasts
* List installations: `sudo edit-chroot -a` or `-al` to include version details
* Create backup: `sudo edit-chroot -b chrootname` - creates file named chrootname-yyyymmdd-hhmm.tar.gz.
* Restore of an existing instance: `sudo edit-chroot -r chrootname -f path_to_backup_file.tar.gz`

# vagrant-macos-homebrew: a Vagrant box with Homebrew preinstalled

# VAGRANT CLOUD

https://app.vagrantup.com/mcandre/boxes/vagrant-macos-homebrew

# EXAMPLE

```console
$ vagrant up
$ vagrant ssh -c 'brew install wget && wget --version'
GNU Wget 1.19.4 built on darwin17.3.0.

-cares +digest -gpgme +https +ipv6 +iri +large-file -metalink +nls
+ntlm +opie -psl +ssl/openssl

Wgetrc:
    /usr/local/etc/wgetrc (system)
Locale:
    /usr/local/Cellar/wget/1.19.4_1/share/locale
Compile:
    clang -DHAVE_CONFIG_H -DSYSTEM_WGETRC="/usr/local/etc/wgetrc"
    -DLOCALEDIR="/usr/local/Cellar/wget/1.19.4_1/share/locale" -I.
    -I../lib -I../lib -I/usr/local/opt/openssl/include -DNDEBUG
Link:
    clang -DNDEBUG -lidn2 -L/usr/local/opt/openssl/lib -lssl -lcrypto
    -ldl -lz ftp-opie.o openssl.o http-ntlm.o ../lib/libgnu.a -liconv
    -lintl -Wl,-framework -Wl,CoreFoundation -lunistring

Copyright (C) 2015 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later
<http://www.gnu.org/licenses/gpl.html>.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Originally written by Hrvoje Niksic <hniksic@xemacs.org>.
Please send bug reports and questions to <bug-wget@gnu.org>.
```

# REQUIREMENTS

* [Vagrant](https://www.vagrantup.com)
* [VirtualBox](https://www.virtualbox.org/) and/or [VMware](https://www.vmware.com)
* [vagrant-vmware-{fusion,workstation} plugin](https://www.vagrantup.com/vmware/index.html)
* [vagrant-package-vmware](https://github.com/bacongravy/vagrant-package-vmware)

## Recommended

* [vagrant-rsync-back](https://github.com/smerrill/vagrant-rsync-back) assists in copying artifacts from the guest to the host

# EXPORT

```console
$ make boxes
```

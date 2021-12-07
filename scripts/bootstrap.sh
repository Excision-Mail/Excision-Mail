#!/bin/sh

if [ "$(id -u)" -ne 0 ] ; then
    echo "Bootstrap needs to be run as root."
    exit 1
fi

cat << EOF
We are going to first prepare the OpenBSD install to support Excision Mail.
We will add python package to the system and the following files are going to be changed:

  /etc/installurl:
  The default package url is going to be changed to 'https://cdn.openbsd.org/pub/OpenBSD'.

  /etc/doas.conf:
  We will permit root to run doas without password.

EOF

[ -f /etc/doas.conf ] && cp -v /etc/doas.conf "/etc/doas.conf.bak.$(date +%F_%R)"
[ -f /etc/installurl ] && cp -v /etc/installurl "/etc/installurl.bak.$(date +%F_%R)"

echo 'permit nopass keepenv :root' > /etc/doas.conf
echo 'https://cdn.openbsd.org/pub/OpenBSD' > /etc/installurl

pkg_add -v python
# if you are running the ansible roles from
# the same machine you also need ansible
# pkg_add ansible

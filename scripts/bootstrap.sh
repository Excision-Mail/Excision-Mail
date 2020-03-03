#!/bin/sh


if [ $(id -u) -ne 0 ] ; then
    echo "You need to bootstrap the system as root or do the steps manually"
    exit 1
fi

echo "We are going to first prepare the OpenBSD install to support AnsiMail"
echo "The following files are going to be changed:"
echo "/etc/installurl: The default package url is going to be changed to https://cdn.openbsd.org/pub/OpenBSD"
echo "/etc/doas.conf: We will permit all member of :wheel to doas without password, change this afterwards"

echo 'permit nopass :wheel' > /etc/doas.conf
echo 'https://cdn.openbsd.org/pub/OpenBSD' > /etc/installurl
pkg_add -xz ansible

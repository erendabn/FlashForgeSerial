#!/bin/sh

sudo mv S50seriallink /etc/init.d/S50seriallink

sudo chmod +x /etc/init.d/S50seriallink

sudo cp /etc/mdev.conf /etc/mdev.conf.bak

sudo sed -i '/^ttyUSB\[0-9\]\*\s\+root:root 660\s*$/d' /etc/mdev.conf

sudo echo -e 'ttyUSB[0-9]*\troot:root 660 * /etc/init.d/S50seriallink' >> /etc/mdev.conf

sudo mdev -s

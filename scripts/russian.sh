#!/bin/bash -eux

apt-get -y install language-pack-ru console-cyrillic

update-locale LANG=ru_RU.UTF-8

echo "ACTIVE_CONSOLES=\"/dev/tty[1-6]\"" > /etc/default/console-setup
echo "CHARMAP=\"UTF-8\"" >> /etc/default/console-setup
echo "CODESET=\"CyrSlav\"" >> /etc/default/console-setup
echo "FONTFACE=\"Fixed\"" >> /etc/default/console-setup
echo "FONTSIZE=\"8x16\"" >> /etc/default/console-setup

/etc/init.d/console-setup.sh restart
update-initramfs -u
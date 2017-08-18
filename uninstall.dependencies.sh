
service apache2 stop

apt-get --purge remove apache\* --assume-yes

rm -r /etc/apache2/

apt-get --purge remove node\* --assume-yes

apt-get --purge remove npm\* --assume-yes

apt autoremove --assume-yes

rm ~/Escritorio/guiTranz
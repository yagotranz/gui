user1=`awk -F: '$2 != "*" && $2 !~ /^!/ { print $1, "" }' /etc/shadow`

touch ~/Escritorio/gui

apt-get update

apt-get install apache2 --assume-yes

dpkg -l apache2 > ~/Escritorio/gui

awk -v u=$user1 'NR==29{print "Alias /gui \"/home/"u"/repoTranz/gui/public\"\n<Directory \"/home/"u"/repoTranz/gui/public\">\nOptions Indexes FollowSymLinks MultiViews\nAllowOverride All\nRequire local\n</Directory>"}7' /etc/apache2/sites-enabled/000-default.conf >> default.conf

cp /etc/apache2/sites-enabled/000-default.conf /etc/apache2/sites-enabled/000-default.conf.back

rm /etc/apache2/sites-enabled/000-default.conf

cp default.conf /etc/apache2/sites-enabled/000-default.conf

rm default.conf

a2enmod rewrite

service apache2 restart

sudo apt-get install nodejs --assume-yes

sudo apt-get install nodejs-legacy --assume-yes

sudo apt-get install npm --assume-yes











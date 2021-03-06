#!/bin/bash
echo "## Atualizando lista de pacotes"
apt-get update
echo "## Atualizando pacotes desatualizados desde o lancamento"
apt-get upgrade -y
echo "## Instalando PHP5"
apt-get install -y php5
echo "## Instalando o composer (PHP)"
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
echo "## Instalando Apache2 e modulo para php"
apt-get install -y apache2 libapache2-mod-php5
service apache2 restart
echo "## Instalando MySQL, Digite a senha quando solicitado"
apt-get install -y mysql-server mysql-client
echo "## Instalando mysql para php"
apt-get install -y php5-mysql
echo "## Instalando unzip e phpMyAdmin"
apt-get install -y unzip
wget https://phpmyadmin-downloads-532693.c.cdn77.org/phpMyAdmin/4.4.9/phpMyAdmin-4.4.9-all-languages.zip
unzip phpMyAdmin-4.4.9-all-languages.zip
cp -R phpMyAdmin* /var/www/html
echo "## Instalando nodejs"
apt-get install -y curl
curl -sL https://deb.nodesource.com/setup_0.12 | bash -
apt-get install nodejs
echo "## Instalando o java para o netbeans"
apt-get install -y openjdk-8-jre openjdk-8-jdk
echo "## Instalando o Git"
apt-get install -y git git-core
echo "## Instalando virtualbox"
wget http://download.virtualbox.org/virtualbox/4.3.28/virtualbox-4.3_4.3.28-100309~Ubuntu~raring_amd64.deb
dpkg -i virtualbox-4.3_4.3.28-100309~Ubuntu~raring_amd64.deb
echo "## Instalando o vagrant"
wget https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.2_x86_64.deb
dpkg -i vagrant_1.7.2_x86_64.deb
echo "## Instalando o docker"
apt-get install -y docker.io
echo "## Instalando o ionic e o cordova"
apt-get install -y ant
npm install -g cordova ionic
echo "## Instalando o Bower"
npm install -g bower
echo "## Instalando o express generator"
npm install express-generator -g
echo "## Instalando o MongoDB"
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list
apt-get update
sudo apt-get install -y mongodb-org
echo "## Instalando o Angular Full Stack (MEAN Stack com socket.io)"
npm install -g yo grunt-cli
npm install -g generator-angular-fullstack
echo "## Script finalizado.  Visite: docker.io / vagrantup.com / vagrantbox.es / nodejs.org / php.net / getcomposer.org / ionicframework.com / mongodb.org /cordova.apache.org"

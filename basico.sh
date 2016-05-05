#!/bin/
echo "INSTALACION ESENCIAL DESPUES DE INSTALAR UBUNTU AGAIN"
sudo apt update && sudo apt upgrade
echo "COMPRIMIDOS"
sudo apt install -y unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract #file-roller
echo "RESTRICTED EXTRAS"
sudo apt install -y ubuntu-restricted-extras
echo "PLAYONLINUX"
sudo apt install -y playonlinux
echo "REDSHIFT"
sudo apt install -y redshift-gtk
echo "TWEAK"
sudo apt install -y unity-tweak-tool
sudo apt install -y compizconfig-settings-manager
sudo apt install -y gnome-tweak
echo "bleachbit"
sudo apt install -y bleachbit
echo "indicator-cpufreq"
sudo apt install -y indicator-cpufreq
echo "Laptop-Tweaks"
sudo add-apt-repository -y ppa:linrunner/tlp
sudo apt update
sudo apt install tlp tlp-rdw
sudo tlp start
echo "caffeine"
sudo add-apt-repository -y ppa:caffeine-developers/ppa
sudo apt install -y caffeine
echo "GIT"
sudo apt install -y git

echo "##### OTRAS APLICACIONES ######"
#jojojojojjo
# echo "MENDELEY"
# wget https://www.mendeley.com/repositories/ubuntu/stable/amd64/mendeleydesktop-latest
# sudo dpkg -i mendeleydesktop*.deb

echo "SPOTIFY"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update
sudo apt install -y spotify-client
sudo apt update && sudo apt -y upgrade

echo "##### FIXES VARIOS ######"
# echo "fix luz ubuntu 14.04.4"
# sudo add-apt-repository ppa:nrbrtx/sysvinit-backlight
# sudo apt update
# sudo apt install sysvinit-backlight

# echo "QGIS LTR"
# #sudo add-apt-repository ppa:ubuntugis/ubuntugis-LTR
# #sudo apt update
# #sudo apt install qgis python-qgis qgis-plugin-grass grass saga

### SUMA DE HASH NO FUNCIONA
## sudo rm -rf /var/lib/apt/lists/*

echo "##### PERSONALIZACION ######"
# echo "VARIETY"
# sudo add-apt-repository ppa:peterlevi/ppa
# sudo apt update
# sudo apt install variety
#
# echo "CONKY"
# sudo add-apt-repository -y ppa:teejee2008/ppa
# sudo apt update
# sudo apt install -y conky-manager

echo "TEMAS e ICONOS"
## en cuanto a iconos tal vez sea mejor descargar los paquetes
## e instalar uno a uno, ya que tienen dependencias con otros paquetes
## evitaria ver millones en unity tweak
# #MOKA
# sudo add-apt-repository ppa:moka/stable
# sudo apt update
# sudo apt install moka-icon-theme
# #NUMIX
# sudo add-apt-repository ppa:numix/ppa
# sudo apt update
# sudo apt install numix-icon-theme numix-icon-theme-circle
#ELEMENTARY
# sudo add-apt-repository ppa:elementary-os/daily
# sudo apt update
# sudo apt install elementary-icon-theme
#sudo apt remove elementary-icon-theme

# echo "CONDA"
# wget https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh
# sh Miniconda2-latest-Linux-x86_64.sh

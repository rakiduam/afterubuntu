#!/bin/

echo "INSTALACION ESENCIAL DESPUES DE INSTALAR UBUNTU AGAIN"
sudo apt-get update && sudo apt-get upgrade

echo "RESTRICTED EXTRAS"
sudo apt-get install -y ubuntu-restricted-extras

echo "TWEAK"
sudo apt-get install -y unity-tweak-tool
sudo apt-get install -y compizconfig-settings-manager
sudo apt-get install -y gnome-tweak

echo "COMPRIMIDOS"
sudo apt-get install -y unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller

echo "bleachbit"
sudo apt-get install -y bleachbit

echo "indicator-cpufreq"
sudo apt-get install -y indicator-cpufreq

echo "Laptop-Tweaks"
sudo add-apt-repository -y ppa:linrunner/tlp
sudo apt-get update
sudo apt-get install tlp tlp-rdw
sudo tlp start

echo "caffeine"
sudo add-apt-repository -y ppa:caffeine-developers/ppa
sudo apt-get install -y caffeine

echo "##### APLICACIONES ######"
echo "MENDELEY"
wget https://www.mendeley.com/repositories/ubuntu/stable/amd64/mendeleydesktop-latest
sudo dpkg -i mendeleydesktop*.deb

echo "GIT"
sudo apt-get install -y git

echo "SPOTIFY"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install -y spotify-client
sudo apt-get update && sudo apt-get -y upgrade

echo "##### FIXES VARIOS ######"
echo "fix luz ubuntu?"
sudo add-apt-repository ppa:nrbrtx/sysvinit-backlight
sudo apt-get update
sudo apt-get install sysvinit-backlight

### SUMA DE HASH NO FUNCIONA
## sudo rm -rf /var/lib/apt/lists/*

echo "##### PERSONALIZACION ######"
echo "VARIETY"
sudo add-apt-repository ppa:peterlevi/ppa
sudo apt-get update
sudo apt-get install variety

echo "CONKY"
sudo add-apt-repository -y ppa:teejee2008/ppa
sudo apt-get update
sudo apt-get install -y conky-manager

echo "TEMAS e ICONOS"
#MOKA
sudo add-apt-repository ppa:moka/stable
sudo apt-get update
sudo apt-get install moka-icon-theme
#NUMIX
sudo add-apt-repository ppa:numix/ppa
sudo apt-get update
sudo apt-get install numix-icon-theme numix-icon-theme-circle
#ELEMENTARY
sudo add-apt-repository ppa:elementary-os/daily
sudo apt-get update
sudo apt-get install elementary-icon-theme
#sudo apt-get remove elementary-icon-theme

# echo "CONDA"
# wget https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh
# sh Miniconda2-latest-Linux-x86_64.sh

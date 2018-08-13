#!/bin/

echo "INSTALACION ESENCIAL DESPUES DE INSTALAR UBUNTU AGAIN"
sudo apt update && sudo apt upgrade -y && sudo apt dist-upgrade -y
clear

echo "COMPRIMIDOS"
sudo apt install -y unace unrar zip unzip p7zip-full p7zip-rar
sudo apt install ntp -y
clear

echo "RESTRICTED EXTRAS"
sudo apt install -y ubuntu-restricted-extras

echo "LIBRERIAS IMPORTANTES"
wget https://mirrors.kernel.org/ubuntu/pool/main/libp/libpng/libpng12-0_1.2.54-1ubuntu1_amd64.deb
sudo dpkg -i libpng12-01_1.2.54-1ubuntu1_amd64.deb
#sudo apt install libpng12-0

sudo add-apt-repository ppa:ubuntugis/ubuntugis-unstable
sudo apt install gfortran libcurl4-openssl-dev libxml2-dev 
sudo apt install libssl-dev libgdal20 gdal-bin python-gdal python3-gdal
sudo apt-get build-dep gdal
sudo apt install libcairo2-dev 

echo "Laptop-Tweaks"
sudo add-apt-repository -y ppa:linrunner/tlp
sudo apt update
sudo apt install tlp tlp-rdw thermald
sudo tlp start

echo "GIT"
sudo apt install -y git

echo "REDSHIFT"
sudo apt install -y redshift-gtk

echo "##### OTRAS APLICACIONES ######"

echo "CALIBRE"
sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin

echo "apps en SNAP"
sudo apt install snapd
#sudo apt update -qq && sudo snap install spotify vlc  skype foobar2000 gimp 
echo editores de imagenes
sudo snap install gimp pencilsheep inkscape
echo manejo PDF
sudo snap install briss krop pdfmixtool #directpdf okular
echo sublime text
sudo snap install sublime-text
clear

echo "FLATPAK"
sudo add-apt-repository ppa:alexlarsson/flatpak
sudo apt update
sudo apt install flatpak
sudo apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo "bleachbit"
sudo apt install -y bleachbit

#echo "PLAYONLINUX"
#sudo apt install -y playonlinux


#echo "TWEAK"
#sudo apt install -y unity-tweak-tool
#sudo apt install -y compizconfig-settings-manager
#sudo apt install -y gnome-tweak

#echo "indicator-cpufreq"
#sudo apt install -y indicator-cpufreq

#echo "caffeine"
#sudo add-apt-repository -y ppa:caffeine-developers/ppa
#sudo apt install -y caffeine

#echo "##### FIXES VARIOS ######"
# echo "fix luz ubuntu 14.04.4"
# sudo add-apt-repository ppa:nrbrtx/sysvinit-backlight
# sudo apt update
# sudo apt install sysvinit-backlight

# echo "QGIS LTR"
# #sudo add-apt-repository ppa:ubuntugis/ubuntugis-LTR
# #sudo apt update
# #sudo apt install qgis python-qgis qgis-plugin-grass grass saga

echo "ACTUALIZAR LIMPIAR"
sudo apt autoclean -y && sudo apt autoremove -y && sudo update-desktop-database && sudo apt-get install -f -y
clear

echo "Es Necesario Reiniciar para que los cambios hagan efecto"

### SUMA DE HASH NO FUNCIONA
## sudo rm -rf /var/lib/apt/lists/*

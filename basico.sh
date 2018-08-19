#!/bin/

echo "INSTALACION ESENCIAL DESPUES DE INSTALAR UBUNTU AGAIN"
echo ""
sudo apt update && sudo apt upgrade -y && sudo apt dist-upgrade -y
clear

echo "COMPRIMIDOS"
echo ""
sudo apt install -y unace unrar zip unzip p7zip-full p7zip-rar
sudo apt install ntp -y
clear

echo "RESTRICTED EXTRAS"
echo ""
sudo apt install -y ubuntu-restricted-extras
clear

echo "LIBRERIAS IMPORTANTES"
echo ""
sudo add-apt-repository deb http://cz.archive.ubuntu.com/ubuntu bionic main universe
sudo add-apt-repository ppa:ubuntugis/ubuntugis-unstable
sudo add-apt-repository 'deb http://qgis.org/debian bionic main'
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key CAEB3DC3BDF7FB45
#sudo apt update -qq
sudo apt-get install g++
sudo apt-get install build-essential
sudo apt-get -qq update && sudo apt-get install -y python-pip linkchecker libgdal-dev libproj-dev libjpeg-dev libpng-dev libgeos-dev libudunits2-dev

wget https://mirrors.kernel.org/ubuntu/pool/main/libp/libpng/libpng12-0_1.2.54-1ubuntu1_amd64.deb
#sudo dpkg -i libpng12-01_1.2.54-1ubuntu1_amd64.deb
sudo dpkg -i libpng12-0_1.2.54-1ubuntu1_amd64.deb
#sudo apt install libpng12-0

sudo apt install gfortran libcurl4-openssl-dev libxml2-dev -y
sudo apt install libssl-dev libgdal20 gdal-bin python-gdal python3-gdal -y
sudo apt-get build-dep gdal -y
sudo apt install libcairo2-dev -y
clear

echo "Laptop-Tweaks"
echo ""
sudo add-apt-repository -y ppa:linrunner/tlp
sudo apt update
sudo apt install tlp tlp-rdw thermald
sudo tlp start
clear

echo "GIT"
echo ""
sudo apt install -y git
clear

echo "REDSHIFT"
echo ""
sudo apt install -y redshift-gtk
clear

echo "##### OTRAS APLICACIONES ######"
echo ""
echo "CALIBRE"
echo ""
sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin
clear

echo "apps en SNAP"
echo ""
sudo apt install snapd
echo ""
echo "VARIOS"
sudo snap install opera simplescreenrecorder-mardy
echo ""
echo "MULTIMEDIA"
echo ""
sudo apt update -qq && sudo snap install spotify foobar2000 picard
echo ""
echo "editores de imagenes"
echo ""
sudo snap install gimp pencilsheep inkscape
echo ""
echo "PDF"
echo ""
sudo snap install briss krop pdfmixtool #directpdf okular
echo "DESARROLLO"
echo ""
echo sublime text
sudo snap install sublime-text
clear

echo "FLATPAK"
echo ""
sudo add-apt-repository ppa:alexlarsson/flatpak -y
sudo apt update
sudo apt install flatpak
sudo apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
clear

echo "bleachbit"
sudo apt install -y bleachbit
clear

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

echo "### UPDATE" && sudo apt update && sudo apt upgrade -y && sudo apt dist-upgrade -y && echo "### SNAP" && sudo snap refresh && echo "### FLATPAK" &&flatpak update -y && sudo apt autoclean -y && sudo apt autoremove -y
clear
echo ''
echo "Es Necesario Reiniciar para que los cambios hagan efecto"

### SUMA DE HASH NO FUNCIONA
## sudo rm -rf /var/lib/apt/lists/*

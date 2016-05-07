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
echo "CALIBRE"
sudo -y -v && wget -nv -O- https://raw.githubusercontent.com/kovidgoyal/calibre/master/setup/linux-installer.py | sudo python -c "import sys; main=lambda:sys.stderr.write('Download failed\n'); exec(sys.stdin.read()); main()"

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

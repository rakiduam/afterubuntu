#!/bin/
echo "##### PERSONALIZACION ######"
# echo "VARIETY"
# sudo add-apt-repository ppa:peterlevi/ppa
# sudo apt update
# sudo apt install variety

echo "CONKY"
#sudo add-apt-repository -y ppa:teejee2008/ppa
#sudo apt-get update
#sudo apt-get install -y conky-manager

echo "TEMAS e ICONOS"
## en cuanto a iconos tal vez sea mejor descargar los paquetes
## e instalar uno a uno, ya que tienen dependencias con otros paquetes
## evitaria ver millones en unity tweak
echo "MOKA icon-theme"
sudo add-apt-repository ppa:moka/stable
sudo apt update
sudo apt install faba-icon-theme moka-icon-theme
echo "NUMIX icon-theme"
sudo add-apt-repository ppa:numix/ppa
sudo apt update
sudo apt install numix-icon-theme numix-icon-theme-circle
echo "ELEMENTARY icon-theme"
sudo add-apt-repository ppa:elementary-os/daily
sudo apt update
sudo apt install elementary-icon-theme
#sudo apt remove elementary-icon-theme

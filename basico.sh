#!/bin/bash

echo "esenciales after install ubuntu"
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

echo "GIT"
sudo apt-get install -y git

echo "SPOTIFY"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install -y spotify-client
sudo apt-get update && sudo apt-get -y upgrade

echo "CONKY"
sudo add-apt-repository -y ppa:teejee2008/ppa
sudo apt-get update
sudo apt-get install -y conky-manager

echo "TEMAS e ICONOS"
sudo add-apt-repository ppa:noobslab/potenza
sudo apt-add-repository ppa:numix/ppa


# echo "CONDA"
# wget https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh
# sh Miniconda2-latest-Linux-x86_64.sh

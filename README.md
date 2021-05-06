# Que es este respositorio
Listado de aplicaciones y cosas que instalo despues de instalar ubuntu.

fuente:  
- https://ispmarin.github.io/data-science/ds-linux-environment/
- https://mothergeo-py.readthedocs.io/en/latest/index.html
- https://towardsdatascience.com/how-to-install-tensorflow-gpu-on-ubuntu-18-04-1c1d2d6d6fd2
    
Instalacion de CUDA  
https://developer.nvidia.com/cuda-downloads  


## Breves recordatorios  
### linux shell  
```{shell}
echo actualizar instalación
sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y && sudo apt-get autoclean -y && sudo apt-get autoremove -y

echo si esta instalado snap y flatpak
sudo snap refresh && flatpak update -y

echo instalar manejo archivos comprimidos
sudo apt install -y unace unrar zip unzip p7zip-full p7zip-rar

echo agregar repositorio a update; sudo add-apt-repository 'deb http://qgis.org/debian bionic main'
sudo add-apt-repository 'deb *repositorio* *version* main'

echo install make
sudo apt-get install -y build-essential

echo librerias basicas para ubuntu linux/programacion
sudo apt-get install -y g++ gfortran



sudo apt install libclang-dev
sudo apt-get install libcurl4-openssl-dev
sudo apt-get install libssl-dev
sudo apt-get install libxml2-dev
sudo apt install libmariadbclient-dev
sudo apt-get install libpq-dev
sudo apt-get install unixodbc unixodbc-dev
sudo apt-get install libcairo2-dev
sudo apt-get install libgtk2.0-dev
sudo apt install openjdk-8-jdk
sudo apt install libgdal-dev
sudo apt install libmysqlclient-dev
sudo apt install gdal-bin
sudo apt install libpq-dev
sudo apt install libudunits2-dev libgdal-dev libgeos-dev libproj-dev libfontconfig1-dev
sudo apt install r-base-dev r-cran-sf r-cran-raster r-cran-rjava
sudo apt install -y unace unrar zip unzip p7zip-full p7zip-rar
sudo apt install gnupg software-properties-common
sudo apt install -y libjq-dev libprotobuf-dev libv8-dev libnode-dev

```

### github  
recordar pasos de uso git:  
#### clonar  
git init  
git clone *repositorio*  
git status  
#### actualizar  
git add .  
git commit -m "actualizado el readme"  
git push  
git pull  
#### merge  
git merge  

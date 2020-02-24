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

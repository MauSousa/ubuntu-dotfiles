# Config Guide

### Actualizar paquetes
`` sudo apt update && sudo apt upgrade ``

### Instalar net-tools 
`` sudo apt install net-tools ``

### Verificar red (Se puede utilizar cualquiera de los siguientes comandos)
#### Deberá salir la dirección ip
`` hostname -I ``
`` ifconfig `` 
``ip addr show ``

### Cambiar la dirección ip a una dirección estática si lo deseamos
###### Por dedefecto la ip se asigna por dhcp, si se quiere cambiar la ip hay que hacerlo desde la interfaz gráfica que nos proporciona el SO.

### Instalar Gnome-Tweaks
``sudo apt install gnome-tweaks``

### Instalar curl

`` sudo apt install curl ``

### Instalar zsh
`` sudo apt install zsh ``

### Hacer zsh la terminal por defecto, al final salir de la sesión y ver los efectos
`` chsh -s $(which zsh) ``

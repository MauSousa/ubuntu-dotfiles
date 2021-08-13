# Guía de configuración para un entorno gráfico en Ubuntu

## Nota: Se utilizará el emulador de terminal para la instalación de los programas

## Tabla de contenido

- [ Actualizar paquetes](#1-actualizar-paquetes)
- [Red](#2-verificar-red-se-puede-utilizar-cualquiera-de-los-siguientes-comandos)
- [Dirección IP estática](#3-cambiar-la-dirección-ip-a-una-dirección-estática-si-lo-deseamos)
- [Net tools](#4-instalar-net-tools)
- [Gnome-Tweaks](#5-instalar-gnome-tweaks)
- [Curl](#6-instalar-curl)
- [Git](#7-instalar-y-configurar-git)
- [Repositorio de archivos de configuración](#8-clonar-el-siguiente-repositorio-en-el-directorio-que-se-prefiera-en-mi-caso-será-en-documents)
- [zsh](#9-instalar-zsh)
- [Zsh terminal por defecto](#10-hacer-zsh-la-terminal-por-defecto)
- [Vim](#11-instalar-vim)
- [.Vimrc](#12-configurar-el-vimrc)
- [Vim Plug](#13-configurar-vim-plug)
- [Alacritty](#14-instalar-y-personalizar-alacritty)
- [Powerlevel10k](#15-instalar-powerlevel10k)
- [Zsh Plugins](#16-instalar-plugins-para-zsh)
- [Tmux](#17-instalar-tmux)
- [ALias y funciones](#18-exportar-los-archivos-de-alias-y-funciones-en-el-archivo-zshrc)
- [Dependencias](#19-instalar-las-dependencias-que-hagan-falta-para-que-funcionen-correctamente-los-alias-y-las-funciones)
- [MySQL](#20-instalar-mysql)
- [Apache](#21-instalar-apache)
- [PHP](#22-instalar-php-y-sus-móulos-con-mysql-y-apache)
- [MongoDB](#23-instalar-mongodb)
- [MongoDB Compass](#24-instalar-mongodb-compass)
- [Postman](#25-instalar-postman)
- [Herramientas que faltan para Python](#26-instalar-herramientas-que-faltan-para-python)
- [Atajos de teclado](#27-atajos-de-teclado-personalizados)
- [Docker](#28-instalar-docker)

---

### 1. Actualizar paquetes
&ensp;&ensp;`` sudo apt update && sudo apt upgrade ``

### 2. Verificar red (Se puede utilizar cualquiera de los siguientes comandos)

&ensp;&ensp;`` hostname -I ``

&ensp;&ensp;`` ifconfig ``

&ensp;&ensp;``ip addr show ``

### 3. Cambiar la dirección ip a una dirección estática si lo deseamos
&ensp;&ensp;Por dedefecto la ip se asigna por dhcp, si se quiere cambiar la ip hay que hacerlo desde la interfaz gráfica que nos proporciona el SO.

### 4. Instalar net-tools

&ensp;&ensp;`` sudo apt install net-tools ``

### 5. Instalar Gnome-Tweaks
&ensp;&ensp;``sudo apt install gnome-tweaks``

### 6. Instalar curl

&ensp;&ensp;`` sudo apt install curl ``

### 7. Instalar y configurar git

&ensp;&ensp;`` sudo apt install git ``

&ensp;&ensp;`` git config --global user.name "Usuario" ``

&ensp;&ensp;`` git config --global user.email "Correo del usuario" ``

### 7.1 Crear alias para git (en caso de usarlos)
&ensp;&ensp;`` git config alias.lg "log --oneline --decorate --all --graph" ``

&ensp;&ensp;`` git config alias.s "status -s -b" ``

&ensp;&ensp;Verificar que la configuración sea correcta.

&ensp;&ensp;`` git config --list ``

### 8. Clonar el siguiente repositorio en el directorio que se prefiera (en mi caso será en Documents)

&ensp;&ensp;`` cd Documents ``

&ensp;&ensp;`` git clone https://github.com/MauSousa/dotfiles.git dotfiles``

### 9. Instalar zsh
&ensp;&ensp;`` sudo apt install zsh ``

### 10. Hacer zsh la terminal por defecto
&ensp;&ensp;Salir de la sesión para ver los cambios.
&ensp;&ensp;`` chsh -s $(which zsh) ``

### 11. Instalar vim
&ensp;&ensp;`` sudo apt install vim ``

### 12. Configurar el .vimrc 
&ensp;&ensp;Copiar el archivo .vimrc en el directorio __/home/$USER/__, el archivo está en el directorio en el que clonamos el repositorio.

&ensp;&ensp;`` cp Documents/dotfiles/.vimrc . ``

### 13. Configurar vim Plug
&ensp;&ensp;Crear un archivo prueba para configurar los plugins.

&ensp;&ensp;`` vim test.txt ``

&ensp;&ensp;Dentro del archivo, en modo en normal, ejecutar el siguiente comando.

&ensp;&ensp;`` :PlugInstall ``

&ensp;&ensp;Esperar a que termine el instalador de termine el instalador de plugins, cuando termine, ejecutar lo siguiente.

&ensp;&ensp;`` :q ``

&ensp;&ensp;Entrar en modo normal y salir guardando, en mi caso es tecla esc + :wq.

&ensp;&ensp;`` esc :wq ``

&ensp;&ensp;Volvemos a entrar al archivo de prueba y verificamos que los plugins estén instalados.

&ensp;&ensp;`` vim test.txt ``

&ensp;&ensp;Salimos y borramos el archivo prueba.

&ensp;&ensp;`` esc + :wq ``

&ensp;&ensp;`` rm test.txt ``

### 14. Instalar y personalizar Alacritty
&ensp;&ensp;Agregamos el repositorio de Alacritty

&ensp;&ensp;`` sudo add-apt-repository ppa:aslatter/ppa ``

&ensp;&ensp;Actualizamos para que detecte el nuevo repositorio.

&ensp;&ensp;`` sudo apt update ``

&ensp;&ensp;Instalar Alacritty con apt.

&ensp;&ensp;`` sudo apt install alacritty ``

&ensp;&ensp;Crear el directorio alacritty para guardar la configuración, hacerlo en .config/alacritty.

&ensp;&ensp;`` mkdir .config/alacritty ``

&ensp;&ensp;Copiar el archivo __alacritty.yml__ en el directorio anterior, el archivo descrito se encuentra en el directorio donde se clonó el repositorio.

&ensp;&ensp;`` cp Documents/dotfiles/alacritty.yml .config/alacritty ``

### 15. Instalar powerlevel10k

&ensp;&ensp;Instalar la fuente recomendada, podemos encontrarla [aquí](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k).

&ensp;&ensp;Instalar de forma manual el plugin manager powerlevel10k. Lo encuentras [aquí](https://github.com/romkatv/powerlevel10k#manual).

&ensp;&ensp;`` git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k ``

&ensp;&ensp;`` echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc ``

&ensp;&ensp;Usar vim para escribir la siguiente línea en el archivo __.zshrc__

&ensp;&ensp;`` source ~/powerlevel10k/powerlevel10k.zsh-theme ``

&ensp;&ensp;Seguir la configuración.

### 16. Instalar Plugins para zsh
**1.** **zsh-syntax-highlighting**
    
  &ensp;&ensp;`` git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ``
    
  &ensp;&ensp;Usar vim para agregar la siguiente línea al archivo __.zshrc__.
    
  &ensp;&ensp;`` source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ``

**2.** **zsh-autosuggestions**
  
  &ensp;&ensp;`` git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions ``
  
  &ensp;&ensp;Usar vim para agregar la siguiente línea al archivo __.zshrc__.
  
  &ensp;&ensp;`` source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh ``

### 17. Instalar Tmux
&ensp;&ensp;Instalar Tmux para tener múltiples ventanas de terminal en una sola terminal.

&ensp;&ensp;`` sudo apt install tmux ``

&ensp;&ensp;Copiar el archivo *.tmux.conf* al directorio /home/$USER/. El archivo se encuentra en el directorio en el cual clonamos el repostorio.

&ensp;&ensp;`` cp Documents/dotfiles/.tmux.conf . ``

### 18. Exportar los archivos de alias y funciones en el archivo .zshrc
&ensp;&ensp;Ir al directorio __/home/$USER/__ y con vim agregar en la parte inferior del archivo, las siguientes líneas en el archivo __.zshrc__

&ensp;&ensp;__Nota: Es importante estar en el directorio indicado, ya que si no estamos en ese directorio se creará un nuevo archivo .zshrc que no tiene nada que ver con el archivo que queremos editar.__

&ensp;&ensp;`` vim .zshrc ``

&ensp;&ensp;`` # Alias ``

&ensp;&ensp;`` export Alias="/home/augusto/Documents/dotfiles" ``

&ensp;&ensp;`` source $Alias/.myAlias ``

&ensp;&ensp;`` # Functions ``

&ensp;&ensp;`` export Functions="/home/augusto/Documents/dotfiles" ``

&ensp;&ensp;`` source $Functions/.myFunctions ``

&ensp;&ensp;Salir y guardar el archivo

&ensp;&ensp;`` esc + :wq enter ``

&ensp;&ensp;Verificar si funcionan correctamente las funciones y los alias.

&ensp;&ensp;__Nota: algunas funciones y alias no funcionarán de manera correcta, ya que faltan algunas dependencias que se tienen que instalar.__

### 19. Instalar las dependencias que hagan falta para que funcionen correctamente los alias y las funciones

&ensp;**1. Instalar el compilador para C y C++**

&ensp;&ensp;Usaremos el compilador GCC en esta ocasión.

&ensp;&ensp;`` sudo apt update ``

&ensp;&ensp;`` sudo apt install build-essential ``

&ensp;&ensp;Verificamos con el siguiente comando.

&ensp;&ensp;`` gcc --version ``

&ensp;**2. Instalar lsd**

&ensp;&ensp;Descargar el paquete  __lsd_0.20.1_amd64.deb__ de [aquí](https://github.com/Peltoche/lsd/releases).

&ensp;&ensp;Cambiarse al directorio donde se decargó el paquete y ejecutar el siguiente comando en la terminal.

&ensp;&ensp;`` sudo dpkg -i lsd_0.20.1_amd64.deb ``

&ensp;&ensp;Esperar a que termine la instalación y borrar el paquete

&ensp;&ensp;`` rm lsd_0.20.1_amd64.deb ``

&ensp;&ensp;Verificar que esté instalado de forma correcta.

&ensp;&ensp;`` lsd --version ``

&ensp;**3. Instalar bat**

&ensp;&ensp;``sudo apt install bat ``

&ensp;&ensp;Verificamos que esté instalado de forma correcta.

&ensp;&ensp;`` bat --version ``


### 20. Instalar MySQL

Gracias a un artículo de [Digital Ocean](https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-20-04), la configuración es la siguiente.

&ensp;&ensp;`` sudo apt update ``

&ensp;&ensp;`` sudo apt install mysql-server ``

&ensp;&ensp;`` sudo mysql_secure_installation ``

&ensp;&ensp;`` CREATE USER 'user'@'localhost' IDENTIFIED BY 'password'; ``

&ensp;&ensp;`` GRANT CREATE, ALTER, DROP, INSERT, UPDATE, DELETE, SELECT, REFERENCES, RELOAD on *.* TO 'user'@'localhost' WITH GRANT OPTION; ``

&ensp;&ensp;`` FLUSH PRIVILEGES; ``

### 21. Instalar apache

Hay que instalar apache para poder usar php.

&ensp;&ensp;`` sudo apt update ``

&ensp;&ensp;`` sudo apt install apache2 ``

&ensp;&ensp;`` sudo ufw allow 'Apache' ``

&ensp;&ensp;`` sudo ufw status ``

&ensp;&ensp;``sudo systemctl status apache2 ``

&ensp;&ensp;``sudo systemctl stop apache2 ``

### 22. Instalar PHP y sus móulos con MySQL y Apache

&ensp;&ensp;`` sudo apt update ``

&ensp;&ensp;`` sudo apt install php8.0 ``

&ensp;&ensp;`` php --version ``

&ensp;&ensp;`` sudo apt install libapache2-mod-php8.0 ``

&ensp;&ensp;`` sudo apt install php8.0-mysql ``

### 23. Instalar MongoDB

&ensp;&ensp;El artículo a seguir lo encuentras [aquí](https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/).

&ensp;&ensp;`` sudo apt update ``

&ensp;&ensp;``wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -``

&ensp;&ensp;Deberemos tener un mensaje de ok en la pantalla de la terminal.

&ensp;&ensp;`` sudo apt-get install gnupg ``

&ensp;&ensp;Volvemos a importar la llave.

&ensp;&ensp;`` wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add - ``

&ensp;&ensp;Ejecutamos el siguiente comando para crear el directorio necesario para MongoDB.

&ensp;&ensp;`` echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list ``

&ensp;&ensp;`` sudo apt-get update ``

&ensp;&ensp;`` sudo apt-get install -y mongodb-org ``

&ensp;&ensp;Ejecutamos el siguiente comando para saber la configuración a seguir.

&ensp;&ensp;``ps --no-headers -o comm 1``

&ensp;&ensp;Ejecutamos el siguiente comando.

&ensp;&ensp;`` sudo systemctl start mongod ``

&ensp;&ensp;Ejecutamos el siguiente comando para iniciar mongo.

&ensp;&ensp;`` mongo ``

&ensp;&ensp;Si queremos personalizar la shell de mongo, este [artículo](https://docs.mongodb.com/manual/tutorial/configure-mongo-shell/) puede servir.

### 24. Instalar MongoDB Compass
&ensp;&ensp;Ir al siguiente [artículo](https://www.mongodb.com/try/download/compass) y seleccionar el paquete para el sistema operativo correspondiente, posteriormente descargar el paquete .deb.

&ensp;&ensp;En la terminal, entrar al directorio donde se descargó el archivo y ejecutar el siguiente comando.

&ensp;&ensp;``sudo dpkg -i nombre_del_archivo.deb ``

&ensp;&ensp;Abrimos el launcher de aplicaciones y buscamos mongodb y nos debe aparecer la aplicación.

### 25. Instalar Postman
&ensp;&ensp;Ejecutamos el siguiente comando.

&ensp;&ensp;``sudo snap install postman``

&ensp;&ensp;Deberemos tener el siguiente mensaje **postman 7.30.1 from Postman, Inc. (postman-inc✓) installed**.

&ensp;&ensp;Abrimos el launcher de aplicaciones y buscamos "postman" y debería salir la aplicación.


### 26. Instalar herramientas que faltan para Python

&ensp;&ensp;`` sudo apt update ``

&ensp;&ensp;`` sudo apt install python3-pip ``

&ensp;&ensp;Verificar la instalación con el siguiente comando.

&ensp;&ensp;`` pip3 --version ``

### 27. Atajos de teclado personalizados
&ensp;&ensp;Algunos atajos de teclado se quedarán por defecto del sistema operativo, pero los siguientes son para agilizar el flujo de trabajo y evitar el uso del mouse.

&ensp;&ensp;Se deberá abrir la configuración e ir a los atajos de teclado, después buscar lo siguiente.

- **Home folder** &ensp;&ensp;`` Shift + Ctrl + x ``
- **Launch terminal** &ensp;&ensp;`` Shift + Ctrl + Space ``
- **Settings** &ensp;&ensp;`` Shift + Ctrl + z ``
- **Close Window** &ensp;&ensp;`` Shift + Ctrl + A ``
- **Postman** &ensp;&ensp;`` Ctrl + Alt + Super + P ``
- **Gnome-Tweaks** &ensp;&ensp;`` Shift + Ctrl + Q ``
- **Firefox** &ensp;&ensp;`` Shift + Ctrl + B ``

### 28. Instalar Docker
&ensp;&ensp;La documentación para instalar Docker se encuentra [aquí](https://docs.docker.com/engine/install/ubuntu/).

&ensp;&ensp;Actualizamos el sistema.

&ensp;&ensp;`` sudo apt update ``

&ensp;&ensp;Debemos quitar cualquier instalación previa de Docker ejecutando el siguiente comando.

&ensp;&ensp;`` sudo apt-get remove docker docker-engine docker.io containerd runc ``

&ensp;&ensp;Procedemos a instalar las herramientas necesarias para instalar el repositorio.

&ensp;&ensp;`` sudo apt-get install apt-transport-https ca-certificates curl gnupg lsb-release ``

&ensp;&ensp;Agregamos la llave del repositorio.

&ensp;&ensp;`` curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg ``

&ensp;&ensp;Seleccionamos la plataforma en la que se instalará Docker.

&ensp;&ensp;`` echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null ``

&ensp;&ensp;Instalamos Docker.

&ensp;&ensp;`` sudo apt-get update``

&ensp;&ensp;`` sudo apt-get install docker-ce docker-ce-cli containerd.io ``

&ensp;&ensp;Verificamos que se haya instalado de forma correcta.

&ensp;&ensp;`` which docker ``

### 29. Manejar Docker sin permisos de root

&ensp;&ensp;La documentación [aquí](https://docs.docker.com/engine/install/linux-postinstall/).

&ensp;&ensp;Creamos el grupo docker

&ensp;&ensp;`` sudo groupadd docker ``

&ensp;&ensp;Le damos permisos al usuario para estar en el grupo

&ensp;&ensp;`` sudo usermod -aG docker $USER ``

&ensp;&ensp;Aplicamos los cambios en el grupo

&ensp;&ensp;`` newgrp docker ``

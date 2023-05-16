# GitTask

Para preparar el servidor LAMP

1- Conéctate a tu instancia.

2- Para asegurarse de que todos sus paquetes de software estén actualizados, realice una actualización rápida de software en su instancia. 
Este proceso puede demorar unos minutos, pero es importante asegurarse de tener las actualizaciones de seguridad y las correcciones de 
errores más recientes.
La -y opción instala las actualizaciones sin pedir confirmación. Si desea examinar las actualizaciones antes de instalarlas, puede omitir esta opción.

sudo dnf update -y

3- Instale las últimas versiones del servidor web Apache y los paquetes PHP para Amazon Linux 2023.

sudo dnf install -y httpd wget php-fpm php-mysqli php-json php php-devel

4- Instale los paquetes de software de MariaDB. Utilice el comando dnf install para instalar varios paquetes de software y 
todas las dependencias relacionadas al mismo tiempo.

sudo dnf install mariadb105-server

Puede ver las versiones actuales de estos paquetes usando el siguiente comando:

sudo dnf info package_name

5- Inicie el servidor web Apache.

sudo systemctl start httpd

6- Utilice el comando systemctl para configurar el servidor web Apache para que se inicie en cada arranque del sistema.

sudo systemctl enable httpd

Puede verificar que httpd está activado ejecutando el siguiente comando:

sudo systemctl is-enabled httpd

7- Agregue una regla de seguridad para permitir conexiones HTTP entrantes (puerto 80) a su instancia si aún no lo ha hecho

8- Pruebe su servidor web. En un navegador web, escriba la dirección DNS pública. Y si todo está bien verás que pone: It works! 

Luego solo tienes que añadirle /phpinfo.php y saldrá la tabla. 

https://github.com/Adrianracks/GitTask/blob/master/README.md

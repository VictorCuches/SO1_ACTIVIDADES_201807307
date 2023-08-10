# Actividad #3 - Gestion de Permisos
## Parte #1: Gestion de usuarios
### Creacion de usuarios
`sudo adduser usuario1`

`sudo adduser usuario2`

`sudo adduser usuario3`

![](img/1_usuarios.png)

### Asignacion de contraseñas
`sudo passwd usuario1`

`sudo passwd usuario2`

`sudo passwd usuario3`

![](img/1_contraseñas.png)

### Informacion de usuarios
`id usuario1`

`id usuario2`

`id usuario3`

![](img/1_info.png)

### Eliminacion de usuarios
`sudo userdel -r usuario3`

![](img/1_eliminar.png)

## Parte #2: Gestion de grupos
### Creacion de grupos
`sudo addgroup grupo1`

`sudo addgroup grupo2`

![](img/2_grupos.png)

### Agregar usuarios a grupos
`sudo adduser usuario1 grupo1`

`sudo adduser usuario2 grupo2`

![](img/2_usuario_grupo.png)

### Verificar membresia
`groups usuario1`

`groups usuario2`

![](img/2_grupo_usuario.png)

### Eliminar grupo
`sudo delgroup grupo2`

![](img/2_eliminar_grupo.png)

## Parte #3: Gestion de permisos
### Creacion de archivos y directorios
`echo "Contenido del archivo 1, escrito por usuario1" > ~/archivo1.txt`

`mkdir ~/directorio1`

`echo "Contenido del archivo 2" > ~/directorio1/archivo2.txt`

![](img/3_crear_archivo.png)

### Verificar permisos
`ls -l ~/archivo1.txt`

`ls -ld ~/directorio1`

`ls -ld ~/directorio1/archivo2.txt`

![](img/3_permisos.png)

### Modificar permisos usando chmod con modo numerico
`chmod 640 ~/archivo1.txt`

![](img/3_permisos_num.png)

### Modificar permisos usando chmod con modo simbolico
`chmod u+x ~/directorio1/archivo2.txt`

![](img/3_permisos_sim.png)

### Cambiar el grupo propietario
`sudo chown :grupo1 ~/directorio1/archivo2.txt`

![](img/3_cambiar_grupo.png)

### Configurar permisos de directorio
`chmod 750 ~/directorio1`

![](img/3_permisos_directorio.png)

### Comprobacion de acceso
`su usuario2`

`cat ~usuario1/archivo1.txt`

`cat ~usuario1/directorio1/archivo2.txt`

![](img/3_comprobar_permiso.png)

### Verificacion final
`ls -l ~usuario1/archivo1.txt`

`ls -ld ~usuario1/directorio1`

`ls -l ~usuario1/directorio1/archivo2.txt`

![](img/3_verificacion.png)

## Preguntas
### ¿Por qué es importante gestionar correctamente los usuarios y permisos en un sistema operativo?
Porque podemos controlar quien puede acceder a que recursos y datos ya que es importante proteger la integridad y privacidad de la informacion. Tambien al asignar especificos a diferentes usuarios y grupos nos permite establecer roles y responsabilidades asi llevar un mejor control de accesos.

### ¿Qué otros comandos o técnicas conocen para gestionar permisos en Linux?
- El comando `chown` que cambia el propietario y el grupo de un archivo o directorio.

- El comando `chgrp` que cambia el grupo propietario de una archivo o directorio.

- El comando `umask` que establece una máscara de permisos predeterminada para nuevos archivos y directorios creados por un usuario.

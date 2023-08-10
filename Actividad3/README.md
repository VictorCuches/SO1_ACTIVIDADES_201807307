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
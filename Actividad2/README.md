## ACTIVIDAD #2 

Para realizar la configuración del cronjob 
Ejecute el siguiente comando para abrir el crontab  

`crontab -e`

![](img/captura1.png)

Agregue la siguiente linea en el archivo 

`*/5 * * * * /Documentos/actividad_dos.sh`

![](img/captura2.png)

Para verificar el contenido del log 
Ejecture el siguiente comando 

`cat /tmp/<fecha>/saludos.log`

Para verificar que el cronjob se ejecute correctamente
Ejecute el siguiente comando 

`grep actividad_dos /var/log/syslog`

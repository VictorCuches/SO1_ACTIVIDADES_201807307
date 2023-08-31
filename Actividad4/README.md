

# ACTIVIDAD #4
---

| Instrucciones | 
|----------|
| Crear un systemd unit de tipo servicio para ejecutar un script imprima un saludo y la fecha actual. Opcionalmente el script puede ser mas complejo para que este no termine y se quede imprimiendo hola mundo cada cierta cantidad de tiempo.    | 



## Paso #1
Crear el script que imprima el saludo y la fecha, cree un archivo llamado script_saludo.sh 

```bash
while true; do
    echo "Hola actividad 4. Fecha: $(date)"
    sleep 5
done
```

## Paso #2 
Crear el systemd unit para el servicio, cree un archivo saludo.service

```
sudo nano /etc/systemd/system/saludo.service
```

Luego de ejecutar el comando agregue el siguiente contenido para el servicio

```
[Unit]
Description=Servicio de impresión de saludo y fecha para actividad 4

[Service]
Type=simple
ExecStart=/ruta/al/script/print_hello.sh

[Install]
WantedBy=multi-user.target
```


### Paso #3
Es necesario habilitar el servicio despues de crear el archivo de unidad de systemd

`sudo systemctl daemon-reload`

`sudo systemctl start saludo.service`

Puedo verificar el estado del servicio para saber si esta funcionando 

`sudo systemctl status saludo.service`
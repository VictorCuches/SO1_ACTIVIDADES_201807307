#!/bin/bash

# pidiendo que se ingrese el usuario de GitHub
read -p "Ingrese el nombre de usuario de GitHub: " GITHUB_USER

# consultando url proporcionada en las instrucciones de la tarea
# para poder realizar esto ejecute el comando sudo apt install curl jq
API_URL="https://api.github.com/users/${GITHUB_USER}"
RESPONSE=$(curl -s "$API_URL")

# obteniendo los datos que se requieren
USER_ID=$(echo "$RESPONSE" | jq -r '.id')
CREATED_AT=$(echo "$RESPONSE" | jq -r '.created_at')

# mostrando en consola el mensaje solicitado
echo "Hola ${GITHUB_USER}. User ID: ${USER_ID}. Cuenta fue creada el: ${CREATED_AT}."

# formateando la fecha
FECHA=$(date +'%Y%m%d')

# creando el directorio si no existe
LOG_DIR="/tmp/${FECHA}"
mkdir -p "$LOG_DIR"

# creando el log file con la salida del mensaje
LOG_FILE="${LOG_DIR}/saludos.log"
echo "Hola ${GITHUB_USER}. User ID: ${USER_ID}. Cuenta fue creada el: ${CREATED_AT}." > "$LOG_FILE"

echo "Se ha guardado correctamente el log en: $LOG_FILE"

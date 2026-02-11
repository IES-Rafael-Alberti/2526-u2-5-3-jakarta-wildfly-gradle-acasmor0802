#!/bin/bash
# Genera certificados autofirmados para desarrollo/pruebas
mkdir -p certs
openssl req -x509 -nodes -days 365 \
  -newkey rsa:2048 \
  -keyout certs/server.key \
  -out certs/server.crt \
  -subj "/C=ES/ST=Cordoba/L=Cordoba/O=DAW/OU=Despliegue/CN=localhost"
echo "Certificados generados en certs/"

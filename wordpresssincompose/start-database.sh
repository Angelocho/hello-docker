#!/bin/sh
docker run \
  --detach \ # en segundo plano
  --name some-mariadb \ # nombre
  --env MARIADB_USER=example-user \ # definir variable de entorno
  --env MARIADB_PASSWORD=my_cool_secret \
  --env MARIADB_ROOT_PASSWORD=my-secret-pw \
  --env MARIADB_DATABASE=wordpress \
  -p 3306:3306 \ #mapeado de puertos
  -v `pwd`/mariadb-data:/var/lib/mysql \ #volumen o ruta de almacenamiento
  mariadb:latest

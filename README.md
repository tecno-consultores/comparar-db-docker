# comparar-db-docker

Script para copiar, comparar o  respaldar el contenido de bases de datos postgresql


variables de entorno:

* IP1=128.66.0.1
* PORT1=5432
* IP2=128.66.0.2
* PORT2=5432
* DBNAME=dbexample
* USER1=admin
* PASS1=123456
* USER2=admin
* PASS2=123456
* MAILUSER=admin@mail.com
* MAILPASS=123456
* MAILSERVER=smtp.mail.com
* MAILPORT=456
* MAILFROM=admin@mail.com
* MAILTO=client@mail.com

# comparardb
```bash
docker run -it --rm --name comparardb -e IP1=128.66.0.1 -e PORT1=5432 -e IP2=128.66.0.2 -e PORT2=5432 -e DBNAME=dbexample -e USER1=admin -e PASS1=123456 -e USER2=admin -e PASS2=123456 sinfallas/comparar-db-docker:TAG comparardb
```

# copiardb
```bash
docker run -it --rm --name copiardb -e IP1=128.66.0.1 -e PORT1=5432 -e IP2=128.66.0.2 -e PORT2=5432 -e DBNAME=dbexample -e USER1=admin -e PASS1=123456 -e USER2=admin -e PASS2=123456 sinfallas/comparar-db-docker:TAG copiardb
```

# respaldar
Primero colocar la informacion necesaria para el accesos a las bases de datos en el archivo lista.txt, luego monte como un volumen en /app la carpeta que contiene dicho archivo.
```bash
docker run -it --rm --name backupdb --volume ./:/app sinfallas/comparar-db-docker:TAG backupdb
```

Get this image on:
* https://hub.docker.com/repository/docker/sinfallas/comparar-db-docker

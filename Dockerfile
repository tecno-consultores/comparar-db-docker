FROM ubuntu:22.04
LABEL maintainer="sinfallas@gmail.com"
LABEL build_date="2024-11-17"
WORKDIR /app
RUN apt update && apt -y install --no-install-recommends --no-install-suggests ca-certificates nano wget curl unzip ssh git && rm -rf /var/lib/{apt,dpkg,cache,log} && apt clean
RUN install -d /usr/share/postgresql-common/pgdg
RUN curl -o /usr/share/postgresql-common/pgdg/apt.postgresql.org.asc --fail https://www.postgresql.org/media/keys/ACCC4CF8.asc
RUN echo "deb [signed-by=/usr/share/postgresql-common/pgdg/apt.postgresql.org.asc] https://apt.postgresql.org/pub/repos/apt jammy-pgdg main" > /etc/apt/sources.list.d/pgdg.list
RUN apt update && apt -y install --no-install-recommends --no-install-suggests postgresql-client && rm -rf /var/lib/{apt,dpkg,cache,log} && apt clean
COPY COPYING ./
COPY comparardb ./
RUN chmod 777 comparardb

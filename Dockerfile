FROM postgres:latest
RUN apk add --no-cache docker-compose

#18-08-2024 ---------------------------- INICIO
#Variáveis de ambiente foram retiradas do Dockerfile que já foram definidas no Pipeline e injetadas no docker-compose

#ENV POSTGRES_HOST=localhost
#ENV POSTGRES_USER=root
#ENV POSTGRES_PASSWORD=root
#ENV POSTGRES_DBNAME=root
#ENV POSTGRES_PORT=5432

#18-08-2024 ---------------------------- FIM

#ENV POSTGRES_HOST=${POSTGRES_HOST:-postgres}
#ENV POSTGRES_USER=${POSTGRES_USER:-postgres}
#ENV POSTGRES_PASSWORD=${POSTGRES_PASSWORD:-postgres}
#ENV POSTGRES_DBNAME=${POSTGRES_DBNAME:-postgres}
#ENV POSTGRES_PORT=${POSTGRES_PORT:-postgres}

COPY create_user.sql /docker-entrypoint-initdb.d/
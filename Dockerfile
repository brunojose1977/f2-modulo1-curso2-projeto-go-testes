FROM postgres:latest
#RUN apk add --no-cache docker-compose

COPY create_user.sql /docker-entrypoint-initdb.d/
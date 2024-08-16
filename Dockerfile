FROM postgres:latest
RUN apk add --no-cache docker-compose

ENV POSTGRES_USER=${POSTGRES_USER:-postgres}
ENV POSTGRES_PASSWORD=${POSTGRES_PASSWORD:-postgres}
ENV POSTGRES_DB=${POSTGRES_DB:-postgres}

COPY create_user.sql /docker-entrypoint-initdb.d/
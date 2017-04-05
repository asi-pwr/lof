#/usr/bin/env bash
docker run -p 6666:5432 -e POSTGRES_USER=libros -e POSTGRES_PASSWORD=123 -d postgres

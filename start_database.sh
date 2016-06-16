#/usr/bin/env bash
docker run -p 127.0.0.1:6666:5432 -e POSTGRES_USER=lof -e POSTGRES_PASSWORD=lof -d postgres

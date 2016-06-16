#/usr/bin/env bash
docker run -p 6666:5432 -e POSTGRES_USER=lof -e POSTGRES_PASSWORD=lof -d postgres

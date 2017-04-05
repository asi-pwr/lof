#/usr/bin/env bash
docker run --name lof -p 5432:5432 -e POSTGRES_USER=lof -e POSTGRES_PASSWORD=lof -d postgres:9.6-alpine

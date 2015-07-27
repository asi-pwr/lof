# Lof

## License

[WTFPLv2](http://www.wtfpl.net/about/)

## Deployment
### PostgreSQL
- apt-get install libpq-dev
- bundle
- apt-get install postgresql-contrib-9.3 (for postgresql-9.3; match version to
  yours)
- sudo -u postgres createuser --superuser $USER
- rake db:setup && rake db:migrate 

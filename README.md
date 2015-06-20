# Lof

## License

[WTFPLv2](http://www.wtfpl.net/about/)

## Deployment
### PostgreSQL
- apt-get install libpq-dev
- bundle
- sudo -u postgres createuser --superuser $USER
- rake db:setup 

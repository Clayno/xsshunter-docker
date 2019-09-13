# xsshunter-docker
Dockerized xsshunter.

## To change subdomains
* gui/static/main.js: hardcoded xss 
* api/apiserver.py: hardcoded xss

## Need to add these files:
* default: nginx conf file. May be a good idea to first generate it with the generator provided by xsshunter
* server.crt: server certificate (wildcard)
* server.key: server private key (wildcard)


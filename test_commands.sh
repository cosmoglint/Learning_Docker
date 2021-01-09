#!bin/bash

# this gives the ip address of your container
docker inspect -f '{{ .NetworkSettings.IPAddress }}' [container_name]

# this gives network id
docker inspect -f '{{range .NetworkSettings.Networks }}{{.NetworkID}}{{end}}' [container_name]

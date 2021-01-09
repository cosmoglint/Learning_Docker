#!bin/bash

# this spits out a lot of data in json format.
docker inspect [continer_id]

# this gives the ip address of your container
docker inspect -f '{{ .NetworkSettings.IPAddress }}' [container_name]

# this gives network id
docker inspect -f '{{range .NetworkSettings.Networks }}{{.NetworkID}}{{end}}' [container_name]

# replace .NetworkID with Gateway IPAddress MacAddress or something else to get that specific data
docker inspect -f '{{range .NetworkSettings.Networks }}{{.MacAddress}}{{end}}' [container_name]


# this gives the id, name and cpu percentage stats
docker stats --no-stream --format "table {{.Container}}\t{{.Name}}\t{{.CPUPerc}}" [conatiner_name]


# cp command is useful in transferring files between the host and the container
# the following command copies the test.txt file from your current directory to the root directory of the container
docker container cp /test.txt  [conatiner_name]:/

# exec command is used to execute commands from within the container
# for example the following command prints the root directory of the conatiner
docker container exec [conatienr_name] ls

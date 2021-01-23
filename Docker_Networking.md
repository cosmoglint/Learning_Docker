<h3>Modes</h3>

- <h4>Bridge</h4>
docker uses bridge network using the bridge driver. this is similar to assigning a network to a virtual machine running in you computer. Containers within the same bridge network can communicate with each other. Port mapping is also possible

- <h4>Host</h4>
this is like connecting the container directly onto the network of the docker host. It will inherit the properties of the host network adapter. Here port mapping is not possible and the containers use the host  ports for communication

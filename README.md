This repository is entirely dedicated to docker and docker compose commands.


Commands list:

1. <code>docker version</code>
	gives the version of docker running
	docker -v can also be used

2. <code>docker ps</code>
	lists out currently running docker containers (ps stands for process)
		-a gives all the containers even the stopped ones
		-f is used for filtering containers based on name or status

3. <code>docker login/logout</code>
	login or logout to your repository on docker hub



4. <code>docker container run</code>
	creates a container with the specified instructions and then runs it
		-d runs the container in detatched mode( background mode, so when you quit in the terminal the container doesnt stop )
		-p specify a particular port number to run the container in

5. <code>docker container create</code>
	creates a container with the specified instructions

6. <code>docker container start</code>
	runs an existing container

7. <code>docker container stop</code>
	aborts a running container

8. <code>docker container rm</code>
	removes an already stopped container



<br>
<br>

for more commands refer https://docs.docker.com/engine/reference/commandline/docker/

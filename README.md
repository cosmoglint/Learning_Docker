This repository is entirely dedicated to docker and docker compose commands.


Commands list:

1. <code>docker version</code>
	gives the version of docker running
	docker -v can also be used

2. <code>docker ps</code>
	lists out currently running docker containers (ps stands for process)
	<ul>
		<li>-a gives all the containers even the stopped ones</li>
		<li>-f is used for filtering containers based on name or status</li>
		<li>--name [customname]  can be used to give a cusom name to th e container. (if you dont each time you run an image a new container with a different name will be created) </li>
	</ul>
3. <code>docker login/logout</code>
	login or logout to your repository on docker hub

4. <code>docker container run</code>
	creates a container with the specified instructions and then runs it
	<ul>
		<li>-d runs the container in detatched mode( background mode, so when you quit in the terminal the container doesnt stop )
		<li>-p specify a particular port number to run the container in</li>
	</ul>

5. <code>docker container create</code>
	creates a container with the specified instructions

6. <code>docker container start</code>
	runs an existing container

7. <code>docker container stop</code>
	aborts a running container

8. <code>docker container rm</code>
	removes an already stopped container. multiple container names or ids can be given space separated to be removed at once. filter flag can also be used in all Commands.



<br>
<br>

for more commands refer https://docs.docker.com/engine/reference/commandline/docker/

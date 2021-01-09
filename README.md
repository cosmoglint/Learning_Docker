This repository is entirely dedicated to docker and docker compose commands.


Commands list:

<h4>Basic commands</h4>
1. <code>docker version</code>
	gives the version of docker running
	docker -v can also be used

2. <code>docker ps</code>
	<code>docekr ls</code>
	lists out currently running docker containers (ps stands for process)
	<ul>
		<li>-a gives all the containers even the stopped ones</li>
		<li>-f is used for filtering containers based on name or status</li>
		<li>--name [customname]  can be used to give a cusom name to th e container. (if you dont each time you run an image a new container with a different name will be created) </li>
	</ul>
<br>
3. <code>docker login/logout</code>
	login or logout to your repository on docker hub

4. <code>docker container run [image_name]</code>
	creates a container with the specified instructions and then runs it
	<ul>
		<li>-d runs the container in detatched mode( background mode, so when you quit in the terminal the container doesnt stop )
		<li>-p specify a particular port number to run the container in</li>
		<li>-i run in interactive mode</li>
		<li>-t allocate a pseudo-TTY ( allocates the terminal to container)</li>
	</ul>
<br>
5. <code>docker container create</code>
	creates a container with the specified instructions

6. <code>docker container start [container_name]</code>
	runs an existing container

7. <code>docker container stop [container_name]</code>
	aborts a running container

8. <code>docker container rm [container_name]</code>
	removes an already stopped container. multiple container names or ids can be given space separated to be removed at once. filter flag can also be used in all Commands.

9. <code>docker inspect [container_name]</code>
	This command gives more details about the container than the ps command. This information is useful and the container can be viewed at a lower level( all the details necessary ).
	<ul>
		<li>-f flag is used to format the output for specific requirement which is in json.  ( can also be used as --format={{args}} )</li>
			- docker inspect -f '{{ .NetworkSettings.IPAddress }}' [container_name] &nbsp&nbsp&nbsp&nbsp gives the ip address of the container
	</ul>

10. <code>docker stats</code>
	This command gives the current stats of a container like memory usage network i/o and cpu
	<ul>
		<li>--no-stream  is used if you dont want a stream output</li>
		<li>--no-trunc  is used if the entire conatiner id is required</li>
		<li>--format to format the table output</li>
	</ul>

11. <code>docker top [container_name]</code>
	This command shows the internal operations and processes of a docker container
<br>
<br>

<h4>Container commands</h4>

1. <code>docker container run [image_name]</code>
	pulls an image and runs a container created with it

2. <code>docker container exec [conatiner_name]</code>
	executes a command from within the container

3. <code>docker container cp [conatiner_name]</code>
	copies files between host and the container

4. <code>docker container stop [conatiner_name]</code>
	gracefully stops the container

5. <code>docker container attach [conatiner_name]</code>

<br>
<br>
for more commands refer https://docs.docker.com/engine/reference/commandline/docker/

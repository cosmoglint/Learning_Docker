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
	a)<code>docekr [container/volumne/image/network/system] ls</code>
		can be used to view any volume image or container  specifically. system shows all containers/networks and images
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
		<li>--name=[custom_name]  can be used to allocate a name for the container</li>
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

	- this command takes in parameters which it should attach with the given container name( for example if you have started a container without interactive mode you can say <code>docker container exec -it [container_name] /bin/bash</code> to enter the container  or <code>docker container exec [conatienr_name] ls</code> to list out the container items)

3. <code>docker container cp [source_path] [destination_path]</code>
	copies files between host and the container

4. <code>docker container stop [conatiner_name]</code>
	gracefully stops the container.
	it sends both sigterm(close all processes) and sigkill(shut down the container)

5. <code>docker container attach [conatiner_name]</code>
	This command attaches us to the container name that is running in interactive mode with a pseudo-TTY

6. <code>docker container kill [container_name]</code>
	this one just sends the sigkill command without exiting all processes(you may lose data)


<h5>tip</h5> you can exit out of a session with the exit command which stops and then quits the container. or you can use the ctrl-p + ctrl-q keys to exit out of the machine without stopping the conatiner

<br>
<br>


<h4>Commands for cleaning up</h4>

1. <code>docker [container/volume/network/image/system] prune</code>
	This removes dangling(stopped) docker data/container/image/volume

2. <code>docker rmi</code>
	removes docker images

3. <code>docker run --rm</code>
	runs a container with the condition that if the container stops it is removed

<h5>point</h5>

- docker image prune removes images that dont have a custom name or a tag( also called a dangling image)
<br>
<br>




<h4>Building images</h4>

1. <code>docker build [path] -t [tag_names]</code>


for more commands refer https://docs.docker.com/engine/reference/commandline/docker/

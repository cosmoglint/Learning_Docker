The docker file contains sets of instructions to be executed. (these sets of commands are called the images)

1. <code>FROM</code> first we need to specify the base image or which image we are going to build on (such as ubuntu)
2. <code>RUN</code>then we need to tell which commands to run
3. <code>COPY</code> copy stuff from current location
4. <code>ENTRYPOINT</code>  this is also the command that gets executed but can be given extra arguments. (so basically stuff like starting nginx or starting a separate binary file)
4. <code>CMD</code> this is the command that executes when container is created with image.


<h4>Building images</h4>

- <code>docker build [path] -t [tag_names]</code>

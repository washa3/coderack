This repository is a project to do projects like adventofcode or project euler

To use GUI elements of racket, follow the directions at the following link 
https://cuneyt.aliustaoglu.biz/en/running-gui-applications-in-docker-on-windows-linux-mac-hosts/

There are directions for Linux, macOS, and Windows. 

Builds the image using the Dockerfile
docker build -t coderack /path/to/Dockerfile 

Runs the container 
docker run --rm -it -e DISPLAY={IPv4 Address of Windows/Linux/macOS}:0.0 -w /coderack -v "$(pwd):/coderack" coderack


Builds the container using the docker-compose.yml file 
docker-compose build 

Runs the container in detached mode and builds it if the build doesn't exist already
docker-compose up -d 

The Dockercompose file uses a environment variable substitution for this display

This command in the WSL .bashrc gets the host system (Windows) IPv4 address and sets it as an environment variable, rather than a shell variable. Put this in the .bashrc of WSL for it to work correctly. Don't forget to source .bashrc as well. I'm sure something similar can be done in Powershell, this won't be described here however. 
export WSLDISPLAY=$(tail -1 /etc/resolv.conf | cut -d' ' -f2)

Something similar can be done on Linux/macOS 

XLang
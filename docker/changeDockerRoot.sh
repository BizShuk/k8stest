#!/bin/bash


# Update variables
docker_root=/var/lib/docker
docker_root_new=/home/shuk/project/DockerRoot

# Main
service docker stop
cp /etc/docker/daemon.json /etc/docker/daemon.json.bak
sed "s|#dockerroot|${docker_root_new}|g" daemon.json >> sudo tee /etc/docker/daemon.json
rsync -aP ${docker_root} ${docker_root_new}
mv ${docker_root} ${docker_root}.old

service docker start
rm -rf ${docker_root}.old
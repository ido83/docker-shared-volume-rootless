# docker-shared-volume-rootless (not shared with host but between containers only)
Docker-shared-volume-rootless

use build.sh to build Docker image

# create volume
docker volume create --name Data-Volume

# run first container
docker run -it --rm --name=Container_v1 -v Data-Volume:/data-volume alpine1:latest

# run second container
docker run -it --rm --name=Container_v2 --volumes-from Container_v1 alpine1:latest

# nvm-docker

A basic docker image to use [nvm](https://github.com/creationix/nvm).

To build a specific version of node use the build argument NODE_VERSION:

    docker build --build-arg NODE_VERSION=4.4.7 -t nvm-docker-4.4.7 .

Run a container and test it out with:

    docker run -it nvm-docker-4.4.7 /bin/bash
    > node -v

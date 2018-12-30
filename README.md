# hub-debug-general
A fat container with general tools for debugging

Add required packages to `packages.txt`.

Build:

    docker build --rm -t hub-debug-general:latest .

Run:

    docker run --name toolkit -ti --network kraken-net hub-debug-general:latest /bin/bash
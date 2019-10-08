FROM swift AS build
USER gitpod
FROM gitpod/workspace-full
COPY --from=build /usr/bin/swiftc /usr/bin/
RUN sudo apt-get update -q && \
    sudo apt-get install -yq libtinfo5 libcurl4-openssl-dev libncurses5 && \
    sudo rm -rf /var/lib/apt/lists/*

# Docker image definition for a Vanilla Minecraft Spigot Server
# Basically just Java 21 runtime and Git for BuildTools
FROM openjdk:21-slim
LABEL maintainer="Kevin Koffroth <ktkoffroth@gmail.com>"
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update -q && \
    apt-get upgrade -yq && \
    apt-get install -yq git wget
CMD ["bash"]

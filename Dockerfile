# Docker image definition for a Vanilla Minecraft Spigot Server
# Basically just Java 17 runtime and Git for BuildTools
FROM openjdk:17.0.1-slim
LABEL maintainer="Kevin Koffroth <ktkoffroth@gmail.com>"
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update -q && \
    apt-get upgrade -yq && \
    apt-get install -yq git wget
CMD ["bash"]
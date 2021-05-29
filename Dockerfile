FROM ubuntu:20.04
ENV TZ=Europe/Warsaw
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN DEBIAN_FRONTEND=noninteractive && apt-get update && apt-get install -y keyboard-configuration
RUN apt-get update && apt-get install -y admesh slic3r

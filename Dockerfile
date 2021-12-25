# syntax=docker/dockerfile:1

FROM ubuntu:latest
# Update package manager (apt-get)
# and install (with the yes flag `-y`)
# Python and Pip
RUN apt-get update && apt-get install -y \
    python2\
    curl
# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

COPY .. .
# Use the official lightweight Python image.
# https://hub.docker.com/_/python
FROM python:3.11-slim

ARG DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y pipx && rm -rf /var/lib/apt/lists/*

COPY . /opt/google-analytics-mcp

WORKDIR /opt/google-analytics-mcp

# Run the application.
CMD [ "pipx", "run", "--spec", "./", "analytics-mcp" ]
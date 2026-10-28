# Day 03 - Build a Custom Docker Image

## Objective
Build a custom Docker image and serve an HTML page using Nginx.

## Tools
- Ubuntu 24.04 on WSL2
- Docker Engine
- Nginx
- HTML

## Project Files
- Dockerfile: Defines the image build instructions.
- index.html: Contains the custom webpage.
- README.md: Documents the project.

## Dockerfile
- FROM nginx:latest uses Nginx as the base image.
- COPY index.html /usr/share/nginx/html/index.html copies the webpage into the image.
- EXPOSE 80 documents the container's web server port.

## Build the Image
docker build -t my-docker-app:1.0 .

## Run the Container
docker run -d --name my-custom-app -p 8081:80 my-docker-app:1.0

## Test
Open http://localhost:8081 in a browser.

The custom HTML page should be displayed.

## Troubleshooting and Verification
- Verified the image with docker images.
- Verified running containers with docker ps.
- Checked the application response using curl.
- Inspected Nginx logs with docker logs my-custom-app.
- Used host port 8081 to avoid conflict with the existing Nginx container on port 8080.

## Key Learnings
- A Dockerfile defines how to build an image.
- The build context makes project files available to Docker.
- COPY places application files inside the image.
- Port mapping connects a host port to a container port.
- A custom image can be reused to create containers.

## Status
Completed.

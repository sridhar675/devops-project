# Day 02 - Run Nginx Using Docker

## Objective
Learn Docker images, containers, port mapping, logs, and container lifecycle commands.

## Environment
- Ubuntu 24.04 on WSL2
- Docker Engine 29.9.0
- Nginx image

## Tasks Completed
- Verified Docker client and engine.
- Ran the hello-world container.
- Listed Docker images and containers.
- Started an Nginx container.
- Published host port 8080 to container port 80.
- Accessed the Nginx welcome page from a browser.
- Inspected container logs.
- Stopped and restarted the same container.

## Commands Practiced
```bash
docker --version
docker info
docker run --rm hello-world
docker images
docker ps
docker ps -a
docker run -d --name my-nginx -p 8080:80 nginx
docker logs my-nginx
docker stop my-nginx
docker start my-nginx
```

## Troubleshooting
Initially, I started Nginx without publishing a host port.
I removed that container and recreated it with `-p 8080:80`.

I also learned that a running container must be stopped before
it can be removed with `docker rm`.

## Key Learnings
- An image is a template; a container is an instance created from it.
- Stopping a container does not delete it.
- Removing a container does not automatically remove its image.
- Port mapping exposes a container service through a host port.
- `docker logs` helps troubleshoot application startup and requests.

## Status
Completed.

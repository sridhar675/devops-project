# Day 04 - Docker Volumes and Persistent Data

## 1. Objective

Learn how Docker volumes store data independently of containers and verify that data remains available after a container is removed.

## 2. Tools Used

- Docker
- Nginx
- Ubuntu on WSL

## 3. Create a Docker Volume

Command:

    docker volume create day04-persistent-data

Result: Successfully created the named volume `day04-persistent-data`.

## 4. Write Data into the Volume

Command:

    docker run --rm -v day04-persistent-data:/data nginx:latest sh -c 'echo "Docker volume data survives after container removal" > /data/message.txt && cat /data/message.txt'

Result:

    Docker volume data survives after container removal

Explanation:

- `docker run` creates and starts a container.
- `--rm` automatically removes the container after it exits.
- `-v day04-persistent-data:/data` mounts the volume at `/data` inside the container.
- `echo` writes the message into `message.txt`.
- `cat` displays the saved message.

## 5. Verify Data Persistence

Command:

    docker run --rm -v day04-persistent-data:/data nginx:latest cat /data/message.txt

Result:

    Docker volume data survives after container removal

The message was accessible from a new temporary container after the first container had been removed.

## 6. Inspect the Volume

Commands:

    docker volume ls

    docker volume inspect day04-persistent-data

The volume was listed successfully. Its driver was `local`, and Docker reported its managed storage location.

## 7. Key Learnings

- A Docker volume stores data independently of a container's lifecycle.
- The `-v` option mounts a volume inside a container.
- The `--rm` option removes a container after it exits.
- Removing a container does not automatically remove a named volume.
- Multiple containers can access the same volume by mounting it.
- `docker volume inspect` displays details about a volume.

## 8. Result

Successfully created a named Docker volume, wrote data into it, removed the temporary container, and verified that the data remained accessible from another container.

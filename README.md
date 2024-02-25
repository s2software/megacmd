# MEGAcmd in a Docker Container

- Mount volumes for MEGAcmd configuration and folder with files to be synchronized (see `volumes:` section in `docker-compose.yml`)

- Run `docker-compose up -d` to start the container

- Connect to the container via `docker exec -it mega-megacmd-1 bash`

- Run `mega-login <email> <password>` to login to MEGA

- Run `mega-sync /root/data /folder/in/mega` to start synchronization

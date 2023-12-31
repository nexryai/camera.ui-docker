# camera.ui unofficial docker image

## Note
The latest tag is no longer updated. The latest tag is kept in the older version of the Dockerfile for compatibility, but please switch to the alpine tag image.  
Alpine tag images have significantly reduced image size and improved security by running camera.ui as a non-root user.

## Run with docker-compose

### Create volume dir
```
sudo mkdir data
sudo chown -R 948:948 data
```

### docker-compose.yml
```
version: '3.7'

services:
  camera.ui:
    container_name: camera.ui
    image: nexryai/camera.ui:alpine
    ports:
     - "8081:8081"
    volumes:
      - ./data:/app/.camera.ui:rw

```


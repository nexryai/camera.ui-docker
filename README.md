# camera.ui unofficial docker image
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


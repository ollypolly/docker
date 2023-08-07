#!/bin/bash

# Function to create a folder if it doesn't exist
create_folder() {
    if [ ! -d "$1" ]; then
        mkdir -p "$1"
        echo "Created folder: $1"
    fi
}

# Declare variables
DOCKER_PATH="/volume1/docker"
USB_PATH="/volumeUSB1/usbshare"

# Plex
create_folder "$DOCKER_PATH/plex"

# Transmission
create_folder "$DOCKER_PATH/transmission"
create_folder "$USB_PATH/torrents"
create_folder "$USB_PATH/torrents/completed"
create_folder "$USB_PATH/torrents/incomplete"

# Media
create_folder "$USB_PATH/media"
create_folder "$USB_PATH/media/movies"
create_folder "$USB_PATH/media/tv"
create_folder "$USB_PATH/media/music"
create_folder "$USB_PATH/media/books"

# Sonarr
create_folder "$DOCKER_PATH/sonarr"

# Radarr
create_folder "$DOCKER_PATH/radarr"

# Prowlarr
create_folder "$DOCKER_PATH/prowlarr"

# Lidarr
create_folder "$DOCKER_PATH/lidarr"

# Overseerr
create_folder "$DOCKER_PATH/overseerr"

# Readarr
create_folder "$DOCKER_PATH/readarr"

# Portainer
create_folder "$DOCKER_PATH/portainer"

# Nginx
create_folder "$DOCKER_PATH/nginxproxymanager"
create_folder "$DOCKER_PATH/nginxproxymanager/db"
create_folder "$DOCKER_PATH/nginxproxymanager/letsencrypt"

# Ombi
create_folder "$DOCKER_PATH/ombi"

# Roon
create_folder "$DOCKER_PATH/roon"
create_folder "$DOCKER_PATH/roon/app"
create_folder "$DOCKER_PATH/roon/data"
create_folder "$DOCKER_PATH/roon/backup"

sudo docker-compose up -d --remove-orphans

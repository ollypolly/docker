#!/bin/bash

# Function to create a folder if it doesn't exist
create_folder() {
    if [ ! -d "$1" ]; then
        mkdir -p "$1"
        echo "Created folder: $1"
    fi
}

# Function to create file if it doesn't exist
create_file() {
    if [ ! -f "$1" ]; then
        touch "$1"
        echo "Created file: $1"
    fi
}

# Declare variables
DOCKER_PATH="/volume1/docker"
DOCKER_COMPOSE_PATH="$DOCKER_PATH/docker-compose-files"
USB_PATH="/volume2/data"

# Plex
create_folder "$DOCKER_PATH/plex"

# Transmission
create_folder "$DOCKER_PATH/transmission"
create_folder "$USB_PATH/torrents"
create_folder "$USB_PATH/torrents/completed"
create_folder "$USB_PATH/torrents/incomplete"

# Sabnzbd
create_folder "$DOCKER_PATH/sabnzbd"
create_folder "$USB_PATH/usenet"
create_folder "$USB_PATH/usenet/completed"
create_folder "$USB_PATH/usenet/incomplete"

# Media
create_folder "$USB_PATH/media"
create_folder "$USB_PATH/media/movies"
create_folder "$USB_PATH/media/tv"
create_folder "$USB_PATH/media/music"
create_folder "$USB_PATH/media/books"
create_folder "$USB_PATH/media/manga"
create_folder "$USB_PATH/media/comics"

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

# Soulseek
create_folder "$DOCKER_PATH/soulseek"
create_folder "$DOCKER_PATH/soulseek/appdata"
create_folder "$DOCKER_PATH/soulseek/downloads"
create_folder "$DOCKER_PATH/soulseek/shared"
create_folder "$DOCKER_PATH/soulseek/logs"

# Pihole
create_folder "$DOCKER_PATH/pihole"
create_folder "$DOCKER_PATH/pihole/pihole"
create_folder "$DOCKER_PATH/pihole/dnsmasq.d"

# Minecraft
create_folder "$DOCKER_PATH/mc-paper"
create_folder "$DOCKER_PATH/mc-backups"

# VSCode
create_folder "$DOCKER_PATH/vscode"
create_folder "$DOCKER_PATH/vscode/workspace"

# Comics
create_folder "$DOCKER_PATH/kapowarr"
create_folder "$DOCKER_PATH/kapowarr/kapowarr-db"
create_folder "$DOCKER_PATH/kapowarr/temp_downloads"
create_folder "$DOCKER_PATH/komga"

# Manga
create_folder "$DOCKER_PATH/kaizoku"
create_folder "$DOCKER_PATH/kaizoku/config"
create_folder "$DOCKER_PATH/kaizoku/logs"

# Books
create_folder "$DOCKER_PATH/calibre"

create_folder "$DOCKER_PATH/ntfy"
create_folder "$DOCKER_PATH/ntfy/cache"

# Create array of all docker-compose files
declare -a DOCKER_COMPOSE_FILES=(
    "docker-compose.books-comics.yml"
    "docker-compose.dl-clients.yml"
    "docker-compose.meta.yml"
    "docker-compose.minecraft.yml"
    "docker-compose.misc.yml"
    "docker-compose.music.yml"
    "docker-compose.networking.yml"
    "docker-compose.shows-movies.yml"
)

# Run docker compose on all files in docker-compose-files as one command
sudo docker-compose --file "${DOCKER_COMPOSE_FILES[@]/#/$DOCKER_COMPOSE_PATH/}" up -d --remove-orphans 




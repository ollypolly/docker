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
DOCKER_PATH="/docker"
DOCKER_COMPOSE_PATH="$DOCKER_PATH/docker-compose-files"
DISK_PATH="../../../diskpool/"

# Plex
create_folder "$DOCKER_PATH/plex"

# Transmission
create_folder "$DOCKER_PATH/transmission"
create_folder "$DISK_PATH/torrents"
create_folder "$DISK_PATH/torrents/completed"
create_folder "$DISK_PATH/torrents/incomplete"

# Sabnzbd
create_folder "$DOCKER_PATH/sabnzbd"
create_folder "$DISK_PATH/usenet"
create_folder "$DISK_PATH/usenet/completed"
create_folder "$DISK_PATH/usenet/incomplete"

# Media
create_folder "$DISK_PATH/media"
create_folder "$DISK_PATH/media/movies"
create_folder "$DISK_PATH/media/tv"
create_folder "$DISK_PATH/media/music"
create_folder "$DISK_PATH/media/books"
create_folder "$DISK_PATH/media/manga"
create_folder "$DISK_PATH/media/comics"

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

# Ntfy
create_folder "$DOCKER_PATH/ntfy"
create_folder "$DOCKER_PATH/ntfy/cache"
create_folder "$DOCKER_PATH/ntfy/attachments"
create_file "$DOCKER_PATH/ntfy/webpush.db"
create_file "$DOCKER_PATH/ntfy/cache.db"
create_file "$DOCKER_PATH/ntfy/auth.db"

# Uptime kuma
create_folder "$DOCKER_PATH/uptime-kuma"

# Speedtest tracker
create_folder "$DOCKER_PATH/speedtest-tracker"

# Tautulli
create_folder "$DOCKER_PATH/tautulli"

# Run docker compose on all files in docker-compose-files as one command
sudo docker compose \
    # -f $DOCKER_COMPOSE_PATH/books-comics.yml \
    # -f $DOCKER_COMPOSE_PATH/dl-clients.yml \
    # -f $DOCKER_COMPOSE_PATH/meta.yml \
    # -f $DOCKER_COMPOSE_PATH/minecraft.yml \
    # -f $DOCKER_COMPOSE_PATH/misc.yml \
    # -f $DOCKER_COMPOSE_PATH/monitoring.yml \
    # -f $DOCKER_COMPOSE_PATH/music.yml \
    # -f $DOCKER_COMPOSE_PATH/networking.yml \
    -f $DOCKER_COMPOSE_PATH/shows-movies.yml \
    up -d --remove-orphans 




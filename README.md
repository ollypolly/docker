# Docker

Synology NAS docker folder, provides a docker-compose.yml file for the containers and a docker_launch shell script for creating the neccesary volumes.

## Docker containers

- Portainer - Conatainer manager, useful for restarting and seeing port numbers
- Autoheal - Auto restarts unhealthy containers
- Plex - Media server for serving media to networked devices
- Transmission with OpenVPN - Torrent client that only runs when vpn connection is active
- Prowlarr - Single indexer management for the -arr apps, e.g. Add trackers and download client information once
- Radarr - Searchs and downloads film torrents and moves to media
- Sonarr - Searchs and downloads tv torrents and moves to media
- Lidarr - Searchs and downloads music torrents and moves to media
- Readarr - Searchs and downloads book torrents and moves to media
- Overseerr - Provides a netflix style request management frontend for Plex users to log in and download content - connects to Radarr/Sonarr
- Nginx Proxy Manager - Used for reverse proxy overseerr to make available to end users without vpn
- MariaDB - Database for proxy manager

## To scaffold and run docker compose

Create .env file

```bash
cd docker-compose-files
cp .env.template .env
```

Add your environment variables to this file

Run docker_launch script

```bash
./docker_launch.sh
```

To stop and remove all containers

```bash
./docker_stop.sh
```

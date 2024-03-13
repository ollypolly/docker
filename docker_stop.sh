# Run docker compose on all files in docker-compose-files as one command
sudo docker-compose \
    -f $DOCKER_COMPOSE_PATH/books-comics.yml \
    -f $DOCKER_COMPOSE_PATH/dl-clients.yml \
    -f $DOCKER_COMPOSE_PATH/meta.yml \
    -f $DOCKER_COMPOSE_PATH/minecraft.yml \
    -f $DOCKER_COMPOSE_PATH/misc.yml \
    -f $DOCKER_COMPOSE_PATH/monitoring.yml \
    -f $DOCKER_COMPOSE_PATH/music.yml \
    -f $DOCKER_COMPOSE_PATH/networking.yml \
    -f $DOCKER_COMPOSE_PATH/shows-movies.yml \
    down
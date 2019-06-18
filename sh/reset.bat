docker-compose down
docker-compose run web rake db:reset
docker-compose up
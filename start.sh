#!/bin/sh

echo start container
docker-compose up -d
docker exec -it docker_test_web bash -c "bundle install && bundle exec rails s -p 3000 -b '0.0.0.0'"

#!/bin/bash

set -e

until psql postgres://postgres:password@db -c '\q'; do
  >&2 echo "Postgres is unavailable - sleeping"
  sleep 1
done

>&2 echo "Postgres is up!"

bundle install --jobs=4
rake db:environment:set RAILS_ENV=development
rake db:drop && rake db:create && rake db:migrate && rake db:seed
rerun --background 'rails server -b 0.0.0.0 -p 9000'
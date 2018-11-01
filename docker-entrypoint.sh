#!/bin/bash

set -e

until psql postgres://postgres:password@db -c '\q'; do
  >&2 echo "Postgres is unavailable - sleeping"
  sleep 1
done

>&2 echo "Postgres is up!"

bundle install --jobs=4
rake db:create
bin/rails db:migrate RAILS_ENV=development
rerun --background 'rails server -b 0.0.0.0 -p 9000'
#!/bin/sh
if [ ! -d "/app/migrations" ]; then
  flask db init
  flask db migrate
  flask db upgrade
fi
flask run
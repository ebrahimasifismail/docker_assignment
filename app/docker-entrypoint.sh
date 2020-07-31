#!/bin/sh
set -e
flask db init
gunicorn --bind 0.0.0.0:5000 wsgi:app
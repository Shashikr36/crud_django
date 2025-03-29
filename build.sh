#!/usr/bin/env bash
set -o errexit

# Tell Poetry to install dependencies into the system environment.
poetry config virtualenvs.create false
poetry install --no-interaction --no-ansi

python manage.py migrate
python manage.py collectstatic --noinput

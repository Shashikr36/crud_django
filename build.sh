#!/usr/bin/env bash
# Exit on error
set -o errexit

poetry install --no-interaction --no-ansi
python manage.py migrate
python manage.py collectstatic --noinput

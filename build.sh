#!/usr/bin/env bash
set -o errexit

# Install dependencies without installing the current project as a package
poetry config virtualenvs.create false
poetry install --no-interaction --no-ansi --no-root

python manage.py migrate
python manage.py collectstatic --noinput

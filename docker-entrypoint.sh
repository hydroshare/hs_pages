#!/bin/sh
python manage.py collectstatic --noinput
python manage.py migrate --noinput --fake-initial
python manage.py loaddata pagemill-fixtures.json
python manage.py createsuperuser --noinput

exec "$@"

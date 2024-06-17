# hs_pages

Help pages based on Mezzanine / Django

### requires.io

[![Requirements Status](https://requires.io/github/hydroshare/hs_pages/requirements.svg?branch=develop)](https://requires.io/github/hydroshare/hs_pages/requirements/?branch=develop)

## How to run
  Clone this repository.

  Using the console, cd into `hs_pages` folder (or whatever name you chose when cloning it).

  Run `docker build -t hs_pages .` and then `docker run -p 8000:8000 -d -t hs_pages`

  You will need a copy of the sqlite database, which you can load. Or you can load fixtures using:
  ```sh
  python manage.py loaddata pagemill-fixtures.json
  python manage.py createsuperuser --noinput
  ```
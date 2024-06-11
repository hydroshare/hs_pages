# This file is exec'd from settings.py, so it has access to and can
# modify all the variables in settings.py.

# If this file is changed in development, the development server will
# have to be manually restarted because changes will not be noticed
# immediately.

from datetime import timedelta
from google.oauth2 import service_account
import os
import json
from dotenv import load_dotenv

load_dotenv()
DEBUG = True

# Make these unique, and don't share it with anybody.
SECRET_KEY = "---this-is-a-fake-key-and-it-should-be-replaced---"
NEVERCACHE_KEY = "---this-is-a-fake-key-and-it-should-be-replaced---"

DATABASES = {
    "default": {
        # Ends with "postgresql_psycopg2", "mysql", "sqlite3" or "oracle".
        "ENGINE": "django.db.backends.sqlite3",
        # DB name or path to database file if using sqlite3.
        "NAME": "sqlite.db",
        # Not used with sqlite3.
        "USER": "",
        # Not used with sqlite3.
        "PASSWORD": "",
        # Set to empty string for localhost. Not used with sqlite3.
        "HOST": "",
        # Set to empty string for default. Not used with sqlite3.
        "PORT": "",
    }
}

###################
# DEPLOY SETTINGS #
###################

# Domains for public site
ALLOWED_HOSTS = ["*"]

# These settings are used by the default fabfile.py provided.
# Check fabfile.py for defaults.

# FABRIC = {
#     "DEPLOY_TOOL": "rsync",  # Deploy with "git", "hg", or "rsync"
#     "SSH_USER": "",  # VPS SSH username
#     "HOSTS": [""],  # The IP address of your VPS
#     "DOMAINS": ALLOWED_HOSTS,  # Edit domains in ALLOWED_HOSTS
#     "REQUIREMENTS_PATH": "requirements.txt",  # Project's pip requirements
#     "LOCALE": "en_US.UTF-8",  # Should end with ".UTF-8"
#     "DB_PASS": "",  # Live database password
#     "ADMIN_PASS": "",  # Live admin user password
#     "SECRET_KEY": SECRET_KEY,
#     "NEVERCACHE_KEY": NEVERCACHE_KEY,
# }

STATICFILES_STORAGE = "whitenoise.storage.CompressedManifestStaticFilesStorage"

# ----- START of settings for using Google Cloud Storage for static files ----- |
ENABLE_STATIC_CLOUD_STORAGE = True
PROJECT_ROOT = os.path.dirname(os.path.abspath(__file__))
BASE_DIR = os.path.dirname(PROJECT_ROOT)
GS_PROJECT_ID = 'hydroshare-gc-project'
GS_BUCKET_NAME = 'hydroshare-help-pages-media'
GS_BLOB_CHUNK_SIZE = 1024 * 256 * 40  # Needed for uploading large streams
GS_EXPIRATION = timedelta(minutes=5)
GS_QUERYSTRING_AUTH = False
GS_DEFAULT_ACL = None
GS_SERVICE_ACCOUNT_FILENAME = 'hydroshare-gcs-sa.json'
# requires that hydroshare-gcs-sa.json be placed in the BASE_DIR
GS_CREDENTIALS = service_account.Credentials.from_service_account_file(
    os.path.join(BASE_DIR, GS_SERVICE_ACCOUNT_FILENAME)
)
DEFAULT_FILE_STORAGE = 'pagemill.storage.FileBrowserGoogleCloudStorage'
# the media is served from the root of the bucket
MEDIA_URL = f'https://storage.googleapis.com/{GS_BUCKET_NAME}/'
MEDIA_ROOT = MEDIA_URL
# ----- END of settings for using Google Cloud Storage for static files ----- |

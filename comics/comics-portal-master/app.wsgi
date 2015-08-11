import os, sys
import logging
from logging.handlers import RotatingFileHandler

os.environ['COMICS_PORTAL'] = '/mnt/content.azcentral.com/live/wsgi.azcentral.com/comics-portal/configs/prod.py'

activate_env=os.path.expanduser("/mnt/content.azcentral.com/live/wsgi.azcentral.com/comics-portal/comics_venv/bin/activate_this.py")
execfile(activate_env, dict(__file__=activate_env))

sys.path.append('/mnt/content.azcentral.com/live/wsgi.azcentral.com/comics-portal/')
from run import app as application

# logging
#handler = RotatingFileHandler('/tmp/comics-portal.log', maxBytes=10000000, backupCount=1)
#formatter = logging.Formatter("[%(asctime)s] {%(pathname)s:%(lineno)d} %(levelname)s - %(message)s")
#handler.setLevel(logging.INFO)
#handler.setFormatter(formatter)
#application.logger.addHandler(handler)
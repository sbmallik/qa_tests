from app import app
import os
_basedir = os.path.abspath(os.path.dirname(__file__))

class CommonConfig(object):
    CREATORS_COMICS_URL = 'http://get.creators.com/api/features/get_list/json/'
    CREATORS_COMICS_X_API_KEY = '5E03C2CE59478764C536328198945E7DC45B0922'
    CREATORS_COMICS_USERNAME = 'azcentral'
    CREATORS_COMICS_PASSWORD = '4fw5kh@mmNDL'
    UNIVERSAL_COMICS_URL = 'https://feedsservice.amuniversal.com/feeds/'
    UNIVERSAL_COMICS_USERNAME = 'azc_feeds'
    UNIVERSAL_COMICS_PASSWORD = '2e32mclORTGM'
    UNIVERSAL_SYNDICATE = 'Universal Uclick'
    FEATURED_COMICS_PATH = os.path.join(_basedir, 'featured_comics.json')
    KINGS_COMICS_PATH = os.path.join(_basedir, 'kings_comics.json')
    KINGS_COMICS_WIDGET = 'http://v4.comicskingdom.net/service.php/portal?clientId=139'
    ADMIN = 'tgreese@gannett.com'
    DEBUG = False
    app.secret_key = '\xd1\xfc\x92f,\x9e\xfd\xfc\x06}\xe1\x98'
    VERSION = 'v1.8'
    TESTING = False

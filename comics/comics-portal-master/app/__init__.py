from flask import Flask

app = Flask(__name__)
app.config.from_object('configs.default.CommonConfig')
app.config.from_envvar('COMICS_PORTAL', silent=True)
from app import views

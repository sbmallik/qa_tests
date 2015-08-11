# To execute this test run nosetests app_test.py from the Terminal

from app import app
from datetime import datetime

import os
import json
import unittest
import requests


universal_comic_id = 'dt'
creators_comic_id = 'bc'  # default comic
kings_comic_id = ''
search_date = datetime.now()
comic_date = datetime.strftime(search_date,"%Y/%m/%d")


class ComicsTest(unittest.TestCase):
    def test_universal_comics(self):
        comics_url = app.config['UNIVERSAL_COMICS_URL']  + 'features.json'
        response = requests.get(str(comics_url), auth=(app.config['UNIVERSAL_COMICS_USERNAME'],app.config['UNIVERSAL_COMICS_PASSWORD']))
        self.assertEqual(response.status_code, 200)

    def test_creators_comics(self):
        comics_url = app.config['CREATORS_COMICS_URL']
        response = requests.get(str(comics_url), auth=(app.config['CREATORS_COMICS_USERNAME'], app.config['CREATORS_COMICS_PASSWORD']))
        self.assertEqual(response.status_code, 200)
    
    def test_universal_comic_id(self):
        comics_url = app.config['UNIVERSAL_COMICS_URL']  + "feature/" + universal_comic_id + "/" + comic_date + ".json"
        response = requests.get(str(comics_url), auth=(app.config['UNIVERSAL_COMICS_USERNAME'],app.config['UNIVERSAL_COMICS_PASSWORD']))
        self.assertEqual(response.status_code, 200)

    def test_creators_comic_id(self):
        comics_url = app.config['CREATORS_COMICS_URL'] + creators_comic_id + "/20?start_date=" + comic_date + "&end_date=" + comic_date
        response = requests.get(str(comics_url), auth=(app.config['CREATORS_COMICS_USERNAME'], app.config['CREATORS_COMICS_PASSWORD']))
        self.assertEqual(response.status_code, 200)

if __name__ == '__main__':
    unittest.main()

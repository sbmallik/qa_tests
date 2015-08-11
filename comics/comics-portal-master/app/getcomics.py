"""LRU Cache wrapper around backend API access, with error handling."""

import json, random

import requests
import pylru

from app import app

cache = pylru.lrucache(1000)
def get_comiclist(pub,comics_url):
    """LRU Cache proxy for json comics APIs."""
    try:
        retval = cache[comics_url]
        return retval
    except KeyError:
        auth = (
            app.config[pub+'_COMICS_USERNAME'],
            app.config[pub+'_COMICS_PASSWORD']
        )
        try:
            response = requests.get(
                str(comics_url),
                auth=auth,
                verify=False
            )
        except Exception:
            return None
        retval = json.loads(response.content)
        cache[comics_url] = retval
        return retval
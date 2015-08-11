from app import app
from flask import request, render_template, abort
from datetime import datetime
from collections import OrderedDict
from models import Comics
import json


comics_dict = OrderedDict()
comics = Comics()
comics_list = OrderedDict(comics.comicsList(comics_dict))

@app.route('/', methods=['GET'], endpoint='/')
@app.route('/index', methods=['GET'])
def index():
    comic_id = 'dt'  # default comic
    search_date = datetime.now()
    featured_list = comics.featuredList(search_date)
    if comic_id:
        comic_display_date = datetime.strftime(search_date, "%B %d, %Y")
        comic_name = comics_list[comic_id]
        comic_url = comics.comicId(comic_id, search_date)
        return render_template("index.html", comics_list=comics_list, comic_name=comic_name, comic_url=comic_url, comic_display_date=comic_display_date,
            uclick_list=comics.uclick_list)

@app.route('/slideshow')
def comicselect():
    search_date = datetime.now()
    url_params = dict((key, request.args.get(key)) for key in request.args.keys())
    if 'feature_id' in url_params and 'comic' not in url_params:
        url_params['comic'] = url_params['feature_id']
    if not url_params.get('feature_date'):
        comic_id = url_params.get('comic-search') if url_params.get('comic-search') else url_params.get('comic')
        comics_date = datetime.strftime(search_date, "%m/%d/%Y")
    else:
        if url_params.get('feature_date') and 'feature_id' not in url_params:
            kings_comics_widget = app.config['KINGS_COMICS_WIDGET']
            return render_template("index.html", comics_list=comics_list, kings=kings_comics_widget, kings_comic=True, uclick_list=comics.uclick_list)
        else:       
            comic_id = url_params['comic']
            comics_date = url_params.get('feature_date')
    if comic_id:
        comic_display_date = datetime.strftime(search_date, "%B %d, %Y")
        try:
            comic_name = comics_list[comic_id]
        except KeyError:
            abort(500)
        selected_comic = next((item for item in comics.creators_list_data if item["file_code"] == comic_id), None)
        if selected_comic:
            # Get comic image url        
            view_all_data = comics.getCreators_list(comic_id)
            if not view_all_data:
                return render_template("404.html", comics_list=comics_list, comics_date=comics_date, comic_display_date=comic_display_date, comic_name=comic_name, uclick_list=comics.uclick_list) 
        else:
            if not hasattr(comics,'uclick_list'):
                comics.featuredList()
            selected_comic = next((item for item in comics.kings_list_data['KING-COMICS'] if item['id'] == comic_id), None)
            if selected_comic:
                kings_comics_widget = app.config['KINGS_COMICS_WIDGET']
                return render_template("index.html", comics_list=comics_list, kings=kings_comics_widget, kings_comic=True, uclick_list=comics.uclick_list)
            else:
                view_all_data = comics.getUniversal_list(comic_id)     
                if not view_all_data:
                    return render_template("404.html", comics_list=comics_list, comics_date=comics_date, comic_display_date=comic_display_date, comic_name=comic_name, uclick_list=comics.uclick_list)     
        return render_template("comics.html", title=comic_name, comics_list=comics_list, view_all_data=OrderedDict(sorted(view_all_data.items(), key=lambda t: t[0])))

@app.errorhandler(500)
def page_not_found(error):
    return render_template("500.html"), 500

@app.route('/version', methods=['GET'])
def version():
   version = app.config['VERSION']
   return version
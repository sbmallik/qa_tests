from app import app
import requests
import json
from datetime import datetime, timedelta
from getcomics import get_comiclist


class Comics(object):

    def comicsList(self, comics_list):
        creators_list_url = app.config['CREATORS_COMICS_URL']
        self.creators_list_data = get_comiclist('CREATORS', creators_list_url)
        for cnt in range(0, len(self.creators_list_data)):
            strip_id = self.creators_list_data[cnt]['file_code']
            comics_list[strip_id] = self.creators_list_data[cnt]['title']
        universal_list_url = app.config['UNIVERSAL_COMICS_URL'] + 'features.json'
        universal_list = requests.get(
            str(universal_list_url),
            auth=(
                app.config['UNIVERSAL_COMICS_USERNAME'],
                app.config['UNIVERSAL_COMICS_PASSWORD']
            ),
            verify= False if app.config['DEBUG'] else True
        )
        self.universal_list_data = json.loads(universal_list.content).get("features")
        for cnt in range(0, len(self.universal_list_data)):
            strip_json_name = self.universal_list_data[cnt]['feature_url'].rsplit('/',1)[1]
            strip_id = strip_json_name.rsplit('.',1)[0]
            comics_list[strip_id] =  self.universal_list_data[cnt]['name']
        kings_list_path = app.config['KINGS_COMICS_PATH']
        self.kings_list_data = json.load(open(kings_list_path))
        for cnt in range(0, len(self.kings_list_data['KING-COMICS'])):
            strip_id = self.kings_list_data['KING-COMICS'][cnt]['id']
            comics_list[strip_id] = self.kings_list_data['KING-COMICS'][cnt]['title']
        return sorted(comics_list.items(), key=lambda v: v[::-1])

    def comicId(self, comic_id, search_date):
        comic_date = datetime.strftime(search_date,"%Y/%m/%d")
        # Get comic image url
        selected_comic = next((item for item in self.creators_list_data if item["file_code"] == comic_id), None)
        if selected_comic:
            # Pull image from creators
            self.getCreators_comic(comic_id, comic_date)
            comic_url = self.img_url
        else:
            # pull image from universal 
            self.getUniversal_comic(comic_id, comic_date)
            comic_url = self.img_url
        return comic_url

    def getCreators_comic(self, comic_id, comic_date):
        comics_url = app.config['CREATORS_COMICS_URL'] + comic_id + "/20?start_date=" + comic_date + "&end_date=" + comic_date
        response = requests.get(str(comics_url), auth=(app.config['CREATORS_COMICS_USERNAME'], app.config['CREATORS_COMICS_PASSWORD']))
        comicstrip_data = json.loads(response.content)
        self.img_url = comicstrip_data[0]['preview_image']
        return

    def getUniversal_comic(self, comic_id, comic_date):
        comics_url = app.config['UNIVERSAL_COMICS_URL']  + "feature/" + comic_id + "/" + comic_date + ".json"
        comicstrip_data = get_comiclist('UNIVERSAL', comics_url)
        self.img_url = comicstrip_data['feature']['feature_items'][0]['assets'][0]['image_link']
        return

    def getCreators_list(self, comic_id):
        view_all_data = {}
        # Pull image from creators
        for cnt in range(0, 10):
            search_date = datetime.now()
            comic_date = datetime.strftime((search_date - timedelta(days=cnt)), "%m/%d/%Y")
            comics_url = app.config['CREATORS_COMICS_URL'] + comic_id + "/20?start_date=" + comic_date + "&end_date=" + comic_date
            response = requests.get(str(comics_url), auth=(app.config['CREATORS_COMICS_USERNAME'], app.config['CREATORS_COMICS_PASSWORD']))
            comicstrip_data = json.loads(response.content)
            img_url = comicstrip_data[0]['preview_image']
            img_date = datetime.strptime(comicstrip_data[0]['release_date'], '%Y-%m-%d %H:%M:%S').strftime('%B %d, %Y')
            view_all_data[cnt] = {'img_url': img_url, 'img_date': img_date}
        return view_all_data
    
    def getUniversal_list(self, comic_id):
        view_all_data = {}
        # pull images from universal        
        for cnt in range(0, 10):
            search_date = datetime.now()
            comic_date = datetime.strftime(datetime.now() - timedelta(days=cnt), "%Y") + "/" + datetime.strftime(datetime.now() - timedelta(days=cnt), "%m") + "/" + datetime.strftime(datetime.now() - timedelta(days=cnt), "%d")
            comics_url = app.config['UNIVERSAL_COMICS_URL']  + "feature/" + comic_id + "/" + comic_date + ".json"
            comicstrip_data = get_comiclist('UNIVERSAL', comics_url)
            try:
                img_url = comicstrip_data['feature']['feature_items'][0]['assets'][0]['image_link']
                img_date = datetime.strptime(comicstrip_data['feature']['feature_items'][0]['date'][:-6], '%Y-%m-%dT%H:%M:%S').strftime('%B %d, %Y')
                view_all_data[cnt] = {'img_url': img_url, 'img_date': img_date}
            except IndexError:
                while not comicstrip_data is not None or comicstrip_data['feature']['feature_items']:
                    comic_date = datetime.strftime(search_date - timedelta(days=1), "%m/%d/%Y")
                    search_date = datetime.strptime(comic_date, "%m/%d/%Y")
                    if search_date < datetime.now() - timedelta(days=9):
                        return
                    else:
                        universal_date_url = datetime.strftime(search_date, "%Y") + "/" + datetime.strftime(search_date, "%m") + "/" + datetime.strftime(search_date, "%d")
                        comics_url = app.config['UNIVERSAL_COMICS_URL']  + "feature/" + comic_id + "/" + universal_date_url + ".json"
                        comicstrip_data = get_comiclist('UNIVERSAL', comics_url)
        return view_all_data

    @classmethod
    def featuredList(self, search_date = None):
        if search_date is None:
            search_date = datetime.now()
        self.uclick_list = {}
        featured_list_path = app.config['FEATURED_COMICS_PATH']
        featured_list_data = json.load(open(featured_list_path,'r'))
        uclick_date_url = datetime.strftime(search_date, "%Y") + "/" + datetime.strftime(search_date, "%m") + "/" + datetime.strftime(search_date, "%d")
        # pull image from uclick
        for cnt in range(0, len(featured_list_data['FEATURED-COMICS'])):
            strip_id = featured_list_data['FEATURED-COMICS'][cnt]['id']
            uclick_url = app.config['UNIVERSAL_COMICS_URL']  + "feature/" + strip_id + "/" + uclick_date_url + ".json"
            uclick_data = get_comiclist('UNIVERSAL', uclick_url)
            try:
                name = uclick_data['feature']['name']
                img_url = uclick_data['feature']['feature_items'][0]['assets'][0]['image_link']
                img_date = datetime.strptime(uclick_data['feature']['feature_items'][0]['date'][:-6], '%Y-%m-%dT%H:%M:%S').strftime('%B %d, %Y')
                self.uclick_list[cnt] = {'id': strip_id, 'name': name, 'img_url': img_url, 'img_date': img_date}
            except IndexError:
                pass
        return

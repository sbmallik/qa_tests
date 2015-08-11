Comics Portal

##Overview

Comics Portal is designed to be a stop gap for the USCP azcentral.com comics page.  The API feeds for Comics includes: Creators Comics, Universal Comics, and Kings Comics.  These are declared in the configs/default.py file and use configFactory API.

In addition, Kings Comics uses javascript and a widget feed.  The comics feed for the Kings Widget uses a default file in https://github.com/phx-it-web/configs/uscp-web-comics/azcentral/config.json

The python index route in the views.py loads a default comic and then up to 10 Feature comics. The Feature Comics use a default file in https://github.com/phx-it-web/configs/comics-portal/defaul/config.json

Comics Title and Comics image link to a /slideshow route that will display up to 10 dates of the selected comic in another template, showing the current date and then previous dates.

Comics Search is located in the right rail.

Since Kings Comics uses a javascript widget and not a feed, only 1 comic will be displayed when selected.



##Setup

mkvirtualenv stopgap
Run all the pip install commands in requirements.txt


APP call:
comics.azcentral.com


##Deployment
###Production

Uses mod_wsgi in a virtual environment (shown in /apps/dev/etc/httpd/conf/vhosts/wsgivhost.conf on zurich)

Run "touch app.wsgi" on /web/live/wsgi.azcentral.com/appNamHere




##Developers

*Tom Reese
*Brad Smith

##Versions

v1.0 Initial Version


1.2 Right rail search 

1.3 Search date and pylru cache

1.4 Refactor with class, LRU cache, date fix

1.5 Redirect Comics Kingdom widget

1.6 Fix feature_id vs comics mismatch

1.7 Move configfactory jsons local to repo

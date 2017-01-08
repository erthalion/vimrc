#!/usr/bin/python
# -*- coding: utf-8 -*-

import sys, urllib2
import simplejson

TIMEOUT = 20
URL = "http://api.openweathermap.org/data/2.5/weather?q=Novosibirsk,ru&APPID=bc68eab2821b4f54dfc6bbdb99ba2073"

def main():

    req = urllib2.Request(URL, None, {'user-agent':'erthalion'})
    opener = urllib2.build_opener()
    f = opener.open(req, timeout=TIMEOUT)

    response = simplejson.load(f)

    temp_raw = response.get("main", {}).get("temp")
    temp = int(round(temp_raw - 273.15))

    sys.stdout.write("{}°C".format(temp))
    sys.stdout.flush()

if __name__ == '__main__':
    main()

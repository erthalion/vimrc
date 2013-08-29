#!/usr/bin/python
# -*- coding: utf-8 -*-

import sys, urllib2
import simplejson

TIMEOUT = 20
URL = "http://api.worldweatheronline.com/free/v1/weather.ashx?q=Kemerovo&format=json&num_of_days=5&key=k6a7suqfw7e8jrrwgse9k5wk"

def main():

    # Get the posts and parse the json response
    req = urllib2.Request(URL, None, {'user-agent':'erthalion'})
    opener = urllib2.build_opener()
    f = opener.open(req, timeout=TIMEOUT)

    response = simplejson.load(f)
    response = response.get("data", "")

    if len(sys.argv) < 2 or len(sys.argv) > 3:
        return "Incorrect usage"

    if sys.argv[1] == "current":
        current = response.get("current_condition", "")
        temp = current[0].get("temp_C", "None")

        sys.stdout.write("{}°C".format(temp))
        sys.stdout.flush()

    elif sys.argv[1] == "days":
        days = response.get("weather", "")

        number = int(sys.argv[2])
        date = days[number].get("date", "")
        sys.stdout.write(date.split("-")[-1])
        sys.stdout.write("\t\t\t")

    elif sys.argv[1] == "forecast":
        days = response.get("weather", "")

        number = int(sys.argv[2])
        temp_max = days[number].get("tempMaxC", "")
        temp_min = days[number].get("tempMinC", "")
        sys.stdout.write("{}-{}°C".format(temp_max, temp_min))
        sys.stdout.write("\t\t")


        sys.stdout.flush()

if __name__ == '__main__':
    main()

#!/usr/bin/python
# -*- coding: utf-8 -*-

import sys, urllib2
import simplejson
import numpy as np
import matplotlib.pyplot as plt
from scipy import interpolate

TIMEOUT = 20
URL = "http://api.worldweatheronline.com/free/v1/weather.ashx?q=Kemerovo&format=json&num_of_days=5&key=k6a7suqfw7e8jrrwgse9k5wk"

def main():

    # Get the posts and parse the json response
    req = urllib2.Request(URL, None, {'user-agent':'erthalion'})
    opener = urllib2.build_opener()
    f = opener.open(req, timeout=TIMEOUT)

    response = simplejson.load(f)
    response = response.get("data", "")

    if len(sys.argv) != 2:
        return "Incorrect usage"

    if sys.argv[1] == "current":
        current = response.get("current_condition", "")
        temp = current[0].get("temp_C", "None")

        sys.stdout.write("{}°C".format(temp))
        sys.stdout.flush()

    elif sys.argv[1] == "forecast":
        days = response.get("weather", "")

        day_list = []
        temp_max_list = []
        temp_min_list = []

        for day in days:
            day_list.append(int(day.get("date", "").split("-")[-1]))
            temp_max_list.append(int(day.get("tempMaxC", "")))
            temp_min_list.append(int(day.get("tempMinC", "")))

        day_list = np.array(day_list)
        temp_max_list = np.array(temp_max_list)
        temp_min_list = np.array(temp_min_list)

        interp = interpolate.interp1d(day_list, temp_max_list, 'cubic')
        ext = np.linspace(day_list[0], day_list[-1], 100)

        #fig = plt.gcf()

        #[i.set_color("white") for i in plt.gca().get_xticklabels()]
        #[i.set_color("white") for i in plt.gca().get_yticklabels()]

        #fig.set_size_inches(10,3)
        plt.xticks(day_list)
        plt.fill_between(ext, interp(ext), 0, facecolor="yellow")

        interp = interpolate.interp1d(day_list, temp_min_list, 'cubic')
        ext = np.linspace(day_list[0], day_list[-1], 100)
        plt.fill_between(ext, interp(ext), 0, facecolor="blue")

        plt.grid(True)
        plt.show()
        #plt.savefig('weather.png', transparent=True, dpi=50)

if __name__ == '__main__':
    main()

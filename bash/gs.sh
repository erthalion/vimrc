#!/bin/bash

gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dSAFER -dFirstPage=18 -dLastPage=873 -sOutputFile=angular_api_cutted.pdf angular_api.pdf

#!/usr/bin/env bash

filename=$(basename -- "$1")
filename="${filename%.*}"

convert $1 -colorspace gray \
          \( +clone -blur 0x6 \) +swap -compose divide -composite \
          -linear-stretch 5%x0% $filename.gif

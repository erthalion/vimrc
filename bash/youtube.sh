#!/bin/bash

youtube-dl -q -o- $1 | mplayer2 -cache 8192  -

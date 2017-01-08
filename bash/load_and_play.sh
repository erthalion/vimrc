#!/bin/bash

LOAD_FILE=$1
TARGET_FILE=$2
# or STRATEGY="geom"
STRATEGY="inorder"

aria2c $LOAD_FILE --stream-piece-selector=$STRATEGY &
sleep 10
mplayer2 $TARGET_FILE -idx

#!/bin/bash

if [ "$UPDATE_YTDLP" == "yes" ]
then
  /usr/local/bin/python -m pip install --upgrade pip
  pip install -U yt-dlp
fi

yt-dlp $*

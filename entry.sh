#!/bin/bash

/usr/local/bin/python -m pip install --upgrade pip
pip install -U yt-dlp

yt-dlp $*
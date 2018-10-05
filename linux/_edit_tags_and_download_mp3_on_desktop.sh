#!/bin/bash

echo "URL: "
read videourl

youtube-dl -x --audio-format "mp3" --audio-quality 0 $videourl
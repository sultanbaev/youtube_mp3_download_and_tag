@echo off

set /P videoartist="ARTIST: "
set /P videotrack="TRACK: "
set /P urltovideo="URL: "

youtube-dl.exe -x --audio-format "mp3" --audio-quality 0 "%urltovideo%"

ren *.mp3 "%videoartist%-%videotrack%.mp3"
id3 -a "%videoartist%" -t "%videotrack%" *.mp3"

move *.mp3 "%userprofile%\Desktop\"
del *.mp3
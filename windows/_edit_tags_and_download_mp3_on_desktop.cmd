@echo off

set /P videoartist="ARTIST: "
set /P videotrack="TRACK: "
set /P urltovideo="URL: "

%~dp0\bin\youtube-dl.exe -x --audio-format "mp3" --audio-quality 0 "%urltovideo%"

TIMEOUT /T 3

%~dp0\bin\id3 -a "%videoartist%" -t "%videotrack%" *.mp3"

TIMEOUT /T 3

ren *.mp3 "%videoartist%-%videotrack%.mp3"

move *.mp3 "%userprofile%\Desktop\"
del *.mp3
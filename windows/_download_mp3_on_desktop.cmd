@echo off

set /P urltovideo="URL: "

%~dp0\bin\youtube-dl.exe -x --audio-format "mp3" --audio-quality 0 "%urltovideo%"

TIMEOUT /T 3

move *.mp3 "%userprofile%\Desktop\"
del *.mp3
@echo off

set /P urltovideo="URL: "

youtube-dl.exe -x --audio-format "mp3" --audio-quality 0 "%urltovideo%"

move *.mp3 "%userprofile%\Desktop\"
del *.mp3
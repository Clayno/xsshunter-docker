#!/bin/sh

sleep 10
cd /usr/local/share/xsshunter/api
python /usr/local/share/xsshunter/api/apiserver.py &
cd /usr/local/share/xsshunter/gui
python /usr/local/share/xsshunter/gui/guiserver.py &

while true; do sleep 10000; done

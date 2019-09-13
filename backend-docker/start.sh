#!/bin/sh

sleep 10
cd /xsshunter/xsshunter/api
python /xsshunter/xsshunter/api/apiserver.py &
cd /xsshunter/xsshunter/gui
python /xsshunter/xsshunter/gui/guiserver.py &

while true; do sleep 10000; done

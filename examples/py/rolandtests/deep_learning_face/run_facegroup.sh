#!/bin/bash

export ARCHFLAGS="-arch aarch64"
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
workon cv
. setqt5env
DISPLAY=localhost:10.0 python3 detect_faces.py --image iron_chic.jpg --prototxt deploy.prototxt.txt --model res10_300x300_ssd_iter_140000.caffemodel 
deactivate

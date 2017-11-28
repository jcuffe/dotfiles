#! /usr/bin/env python
import sys
import os
import time

while True:
    for path in [image.path for image in os.scandir(sys.argv[1])]:
        os.system('feh --bg-center --no-fehbg ' + path)
        time.sleep(60 * 15) # every 15 minutes

#!/bin/sh

# Startup file to be triggered via @reboot command in crontab in Ubuntu. 
# Milage may vary for other distros

# activate the virtual environment
source  /home/cloud/ac_python/.venv/bin/activate

# run the application
/home/cloud/ac_python/.venv/bin/python3 /home/cloud/ac_python/main.py

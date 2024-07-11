"""Run this file"""
from time import sleep

from lib.slack import send_slack_message

while __name__ == "__main__":
    send_slack_message()
    sleep(15)

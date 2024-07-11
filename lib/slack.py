"""Helper to deliver Slack message for demo"""
import os
from time import time

from slack_sdk.webhook import WebhookClient

def send_slack_message(msg=None):  # @todo bad defaults, not handled
    """
    Simple wrapper for sending message into Slack via webhook.

    :param str msg: Message to send into Slack, defaults to None
    """

    if msg is None:
        msg = f"Default response {time()}"

    webhook = WebhookClient(os.environ['slack_webhook'])

    webhook.send(text=msg)

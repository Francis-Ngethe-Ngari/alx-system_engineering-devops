#!/usr/bin/python3

"""
Connect to Reddit API to print no of subscribers of a given subreddit.
"""

import requests


def number_of_subscribers(subreddit):

    """
    Function queries the Reddit API and returns the number of subscribers
    (not active users, total subscribers) for a given subreddit
    """

    if subreddit is None or not isinstance(subreddit, st):
        return 0

    url = f'https://www.reddit.com/r/{subreddit}/about.json'

    headers = {'User-Agent': 'Google Chrome Version 81.0.4044.129'}

    response = requests.get(url, headers=headers, allow_redirects=False)

    data = response.json()

    try:
        return data['data']['subscribers']

    except Exception:
        return 0

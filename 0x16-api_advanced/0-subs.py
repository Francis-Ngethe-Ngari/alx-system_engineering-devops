#!/usr/bin/python3

"""
Connect to Reddit Api to print no of subscribers of a given subreddit.
"""

import requests

def number_of_subscribers(subreddit):

    """
    Retrieve the number of subscribers of a subreddit.
    """

    url = f"https://www.reddit.com/r/{subreddit}/about.json"

    headers = {'user-agent': 'request'}
    response = requests.get(url, headers=headers, allow_redirects=False)

    if response.status_code != 200:
        return (0)

    data = response.json().get("data")
    numb_subs = data.get("subscribers")

    return (numb_subs)

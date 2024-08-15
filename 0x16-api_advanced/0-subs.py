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
    url = f'https://www.reddit.com/r/{subreddit}/about.json'
    headers = {
        'User-Agent': 'my-api-sub'
        }

    response = requests.get(url, headers=headers, allow_redirects=False)

    if response.status_code == 404:
        return 0

    else:
        data = response.json().get('data')

        return data.get('subscribers')

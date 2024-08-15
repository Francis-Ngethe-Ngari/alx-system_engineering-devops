#!/usr/bin/python3

"""
Connect to Reddit API to print no of subscribers of a given subreddit.
"""
from requests import get


def number_of_subscribers(subreddit):
    """
    function that queries the Reddit API and returns the number of subscribers
    (not active users, total subscribers) for a given subreddit.
    """

    url = 'https://www.reddit.com/r/{}/about.json'.format(subreddit)
    headers = {
            'User-Agent': 'my-api-test'
    }

    response = get(url, headers=headers, allow_redirects=False)

    if response.status_code == 404:
        return 0
    else:
        data = response.json().get('data')

        return data.get('subscribers')

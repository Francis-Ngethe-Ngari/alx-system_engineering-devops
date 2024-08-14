#!/usr/bin/python3

"""
Display the top 10 hot posts in a given reddit
"""

import requests


def top_ten(subreddit):

    """
    Function that queries the Reddit API and prints the titles of the
    first 10 hot posts listed for a given subreddit.
    """

    if subreddit is None or not isinstance(subreddit, str):
        print("None")

    headers = {'User-Agent': 'Google Chrome Version 81.0.4044.129'}
    params = {'limit': 10}
    url = 'https://www.reddit.com/r/{}/hot/.json'.format(subreddit)

    response = requests.get(url, headers=headers, params=params)
    data = response.json()

    try:
        my_data = data.get('data').get('children')

        for j in my_data:
            print(j.get('data').get('title'))

    except Exception:
        print("None")

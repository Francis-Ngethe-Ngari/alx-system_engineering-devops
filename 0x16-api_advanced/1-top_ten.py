#!/usr/bin/python3

"""
Display the top 10 hot posts in a given reddit
"""
from requests import get


def top_ten(subreddit):
    """
    Function that queries the Reddit API and prints the titles of the
    first 10 hot posts listed for a given subreddit.
    """
    url = 'https://www.reddit.com/r/{}/hot/.json'.format(subreddit)
    headers = {
            'User-Agent': 'my-api-agent'
            }
    params = {
            'limit': 10
            }
    response = get(url, headers=headers, params=params, allow_redirects=False)

    if response.status_code == 404:
        print("None")
        return
    else:
        data = response.json().get('data')

        [print(i.get('data').get('title')) for i in data.get('children')]

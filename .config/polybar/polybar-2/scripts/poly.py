#!/usr/bin/python

import requests
import os.path

#path to polynews script

save_path = '/home/sachin/.config/polybar/polynews/'

#get your api key at https://newsapi.org/

api_key = "439c693305804e4d9afa86d9e2bad515"

#find sources & country codes at https://newsapi.org/sources

sources = "cnn"
country = "us"

try:
    data = requests.get('https://newsapi.org/v2/top-headlines?apiKey='+api_key+'&sources='+sources).json()
    # d = requests.get('https://newsapi.org/v2/sources?apiKey=439c693305804e4d9afa86d9e2bad515').json()

    sourceName = data['articles'][0]['source']['name']
    title = data['articles'][0]['title']
    url = data['articles'][0]['url']

    print(sourceName+': '+title)
    # print(d['sources'])

    path = os.path.join(save_path,"current_url.txt")         
    f = open(path, "w")
    f.write(url)
    f.close()
    
 
except requests.exceptions.RequestException as e:
    print ('Something went wrong!')


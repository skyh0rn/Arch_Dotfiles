#!/usr/bin/env python

from bs4 import BeautifulSoup
import requests

res = requests.get("https://coronavirus.1point3acres.com/en")
soup = BeautifulSoup(res.text,'lxml')

# find confirmed number
confirm = [c for c in soup.find('div', class_='counts').section.children][1].text
dead = [d for d in [c for c in soup.find('div', class_='counts').children][-1].children][-2].text

print(f" 🤕 {confirm} 🙏 {dead}")
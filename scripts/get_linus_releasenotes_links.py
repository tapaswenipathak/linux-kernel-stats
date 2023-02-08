import requests
import os
from bs4 import BeautifulSoup
from lxml import html

url = "https://en.wikipedia.org/wiki/Linux_kernel_version_history"
html_content = requests.get(url).text
soup = BeautifulSoup(html_content, 'html.parser')

links = []
for td in soup.find_all('td'):
    if td.find('a') and td.find('sup'):
        links.append(td.find('a')['href'])

with open("links2.txt", "w") as f:
    for link in links:
        f.write(link + "\n")

# Open the original file for reading
with open('links2.txt', 'r') as f:
    lines = f.readlines()

# Create a new file for writing the filtered lines
with open('links3.txt', 'w') as f:
    for line in lines:
        if line.startswith('#'):
            f.write(line)

os.remove("links2.txt")

with open("links3.txt", "r") as f:
    ids = f.readlines()

# Remove newline characters from the ids
ids = [x.strip().lstrip('#') for x in ids]
page = requests.get(url)
tree = html.fromstring(page.content)

hrefs = []

for id in ids:
    # Find the li tag with the specified id
    li = tree.xpath(f'//li[@id="{id}"]')[0]

    # Find the a tag within the li tag
    a = li.xpath('.//a[@rel="nofollow"]')[0]

    href = a.get("href")
    hrefs.append(href)

with open("hrefs.txt", "w") as f:
    for href in hrefs:
        f.write(href + "\n")

os.remove("links3.txt")

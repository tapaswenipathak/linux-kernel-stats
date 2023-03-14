import requests
import os
from bs4 import BeautifulSoup
from lxml import html

# Performs web scraping on given url for various linux kernel versions and the URLs for
# respective release notes. 
# Contributor: meetdheerajreddy@gmail.com

url = "https://en.wikipedia.org/wiki/Linux_kernel_version_history"
html_content = requests.get(url).text
soup = BeautifulSoup(html_content, 'html.parser')

links = []

for tag in soup.select("td:nth-of-type(3) a"):
    links.append(tag['href'])
    
for tag in soup.select("td:nth-of-type(2) a"):
    links.append(tag['href'])

with open("links4.txt", "w") as f:
    for link in links:
        f.write(link + "\n")

with open("links4.txt", "r") as f:
    lines = f.readlines()

filtered_lines = [line for line in lines if line.startswith("#") and "#cite_note-KERNELARCHIVES-24" not in line]

with open("filtered_ids.txt", "w") as f:
    f.writelines(filtered_lines)

os.remove("links4.txt")

with open("filtered_ids.txt", "r") as f:
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

# Write the extracted hrefs to a new file
with open("hrefs.txt", "w") as f:
    for href in hrefs:
        f.write(href + "\n")

os.remove("filtered_ids.txt")

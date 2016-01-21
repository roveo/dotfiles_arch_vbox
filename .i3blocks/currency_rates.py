import sys
from bs4 import BeautifulSoup
import requests

fr = sys.argv[1]
t = sys.argv[2]

url = 'https://www.google.com/finance/converter?a=1&from={fr}&to={t}'.format(fr=fr, t=t)
response = requests.get(url)
page = BeautifulSoup(response.text, 'html.parser')

print(page.find('div', id='currency_converter_result').find('span').text.split(' ')[0], end='')

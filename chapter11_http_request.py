import requests

## collect the Web site example.com
response = requests.get('http://www.example.com')

website_content = response.text

print( website_content )

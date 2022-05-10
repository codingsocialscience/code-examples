library(httr)

## collect the Web site example.com
response <- GET('http://www.example.com')

website_content = content( response, 'text' )

print( website_content )

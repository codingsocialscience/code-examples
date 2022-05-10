import json

data = json.load( open('data.json') )

for post in data:
  print( post['id'], post['text']  )

  liked_by = post['likes']

  for user in liked_by:
    print('    Liked by', user )

## adding an entry

new_entry = {
  'id' : 3,
  'text' : 'This post has one Like',
  'likes' : ['John Smith']
}

data.append( new_entry )

## storing new data

json.dump( data, open( 'data2.json', 'w' ) )

library(jsonlite)

data <- read_json( 'data.json' )

for( row in 1:length(data) ){

  print( paste( data[[ row ]]$id, data[[ row ]]$text ) )

  likes <- data[[ row ]]$likes

  for( user in likes ) {
    print( paste('    Liked by', user ) )
  }

}

## adding an entry

new_entry <- list(
  id = 3,
  text = 'This post has one Like',
  likes = c('John Smith')
)

## we make new entry a list to ensure it is percieved as a dictionary when joining items
data <- c( data, list( new_entry ) )

print( data )

write( toJSON( data, auto_unbox = TRUE ) , file = 'data2.json' )

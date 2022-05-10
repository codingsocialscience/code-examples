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

data <- c( data, new_entry )

write( toJSON( data ) , file = 'data2.json' )

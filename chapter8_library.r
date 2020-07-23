print_stars <- function( list ){
  for( item in list ) {
    item = as.integer( item )
    print( paste( rep( '*', item ) , collapse = "" ) )
  }
}

mega_collector <- list()

data <- read.csv('experimental_data.txt')

for( i in 1:nrow(data) ){
  condition <- data[i, 1]
  measurement <- as.numeric( data[i, 2] )

  if( ! condition %in% names( mega_collector ) ){
    mega_collector[[ condition ]] <- list()
  }

  previous_values <- mega_collector[[ condition ]]
  new_values <- c( previous_values , measurement  )
  mega_collector[[ condition ]] <- new_values

}

for( condition in names(mega_collector) ) {
  measurements <- mega_collector[[ condition ]]
  measurements <- unlist( measurements ) ## transforming them to a simpler list
  m <- mean( measurements )
  v <- var( measurements )
  l <- c( m, v )
  print_stars( l )
}

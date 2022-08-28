fix_format <- function( text ) {
  text <- gsub( "D", ".", text )
  number <- as.numeric( text )
  return( number )
}

data <- read.csv("broken_data.txt", header = F)

for( i in 1:nrow(data) ){
  salary = data[i, 1]
  months = data[i, 2]
  salary = fix_format( salary )
  months = fix_format( months )
  print( paste( "Annual salary is", salary * months ) )
}

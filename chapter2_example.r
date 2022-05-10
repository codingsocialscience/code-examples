number_of_lines <- 0

data <- read.table('example.txt')

number_of_lines <- nrow( data )

## or
number_of_lines <- 0
for( i in data ){
   number_of_lines <- number_of_lines + 1
}

print( paste("The total number of lines in the file example.txt is", number_of_lines ) )

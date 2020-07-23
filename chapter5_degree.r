degrees <- list()

degrees['A'] <- 0
degrees['B'] <- 0
degrees['C'] <- 0
degrees['D'] <- 0
degrees['E'] <- 0
degrees['F'] <- 0
degrees['G'] <- 0

## could also be
degrees$A <- 0 ## etc.

data <- read.delim('edgelist.txt', sep = '-', strip.white = TRUE, as.is = TRUE )

for( i in 1:nrow(data) ){
  node1 <- data[i,1]
  degrees[[ node1 ]] <- degrees[[ node1 ]] + 1
  node2 <- data[i,2]
  degrees[[ node2 ]] <- degrees[[ node2 ]] + 1
}

for( node_name in names(degrees) ) {
  degree_value <- degrees[[ node_name ]]
  print( paste( node_name, 'has the degree of', degree_value ) )
}

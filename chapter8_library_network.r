library(igraph)

data <- read.csv('edgelist.txt', sep = '-', header = F, strip.white  = T )
data <- as.matrix( data )

head( data )

graph1 <- graph_from_edgelist( data )
degrees <- degree( graph1 )

print( degrees )
table( degrees )

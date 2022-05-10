votes <- vector()
data <- read.csv("candidates.csv", header = F)

for( i in 1:nrow(data) ){
  candidate_vote <- as.numeric( data[i,3] )
  votes <- c( votes, candidate_vote )
}

votes <- sort( votes )
item_count <- length( votes )

print( paste( "Highest votes", votes[ item_count -1 ] ) )
print( paste( "Second-highest votes", votes[item_count -2 ] ) )

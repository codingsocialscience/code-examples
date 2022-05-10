data <- c(1,2,3)
data2 <- c(1,1,1)

save( data, data2, file = 'example.rdata' ) ## `save' can cover more than one variable at a time

load( 'example.rdata' )

print( data )
print( c(data, data2) )

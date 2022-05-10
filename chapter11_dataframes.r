data <- read.csv( 'emperors_with_header.csv' )

data$age <- data$death_year - data$birth_year ## create a new variable: age
data$reign <- data$reign_end - data$reign_start

print( head( data ) ) ## examine the first few rows of data

print( mean( data$age ) )
print( sum( data$reign ) ) ## return how many years these people reigned

above_mean <- data[ data$age > mean( data$age ), ]

print( head( above_mean  ) ) ## examine only those emperors above the mean age

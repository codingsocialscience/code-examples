data <- read.csv("emperors.txt", header = F)

for( i in 1:nrow(data) ){
  name <- data[i,1]
  birth_year <- data[i,2]
  death_year <- data[i,3]
  start_of_reign <- data[i,4]
  end_of_reign <- data[i,5]
}

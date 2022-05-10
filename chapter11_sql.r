library(DBI)
library(RSQLite)

database_connection <- dbConnect(RSQLite::SQLite(), "example.db")

## SQL commands end with the character ;

database_result <- dbSendQuery( database_connection , "SELECT * FROM posts;") ## submit a query to the database with the intention of using its results later on

results <- dbFetch(database_result)
dbClearResult(database_result) ## clean database_result for further use

for( row in 1:nrow(results) ) {
  print( results[ row, "text"] ) ## the results are automatically dictionary-like
}

dbExecute( database_connection , "INSERT INTO posts(text) VALUES ('This post has no comments.');") ## use dbExecute when the results are not to be stored


dbDisconnect( database_connection ) ## close the database connection

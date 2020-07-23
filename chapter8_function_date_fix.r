fix_format <- function( text ) {
  text <- gsub( "D", ".", text )
  number <- as.numeric( text )
  return( number )
}

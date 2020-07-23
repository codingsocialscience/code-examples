list_of_numbers <- list( 1, 5, 7, 9, 34, 25 )

print( list_of_numbers )

double <- function( x ){
  return( 2 * x );
}

doubled_items <- Map( double, list_of_numbers )

print( doubled_items )

is_small <- function( x ){
  if( x < 10 ){
    return( TRUE )
  }
  return( FALSE )
}

only_small <- Filter( is_small, list_of_numbers )

print( only_small )

number_chain <- function( previous, current ){
  return( paste( previous, ' and ', current, sep = '' ) )
}

numbers_in_chain <- Reduce( number_chain, list_of_numbers )

print( numbers_in_chain )

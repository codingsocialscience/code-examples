import functools

list_of_numbers = [1, 5, 7, 9, 34, 25]

print( list_of_numbers )

def double( x ):
  return 2 * x

## or

double = lambda x: 2 * x

doubled_items = list( map( double, list_of_numbers ) )

print( doubled_items )

def is_small( x  ):
  if x < 10:
    return True
  return False

only_small = list( filter( is_small, list_of_numbers ) )

print( only_small )

def number_chain( previous, current ):
  previous = str( previous )
  current = str( current )
  return previous + ' and ' + current

numbers_in_chain = functools.reduce( number_chain, list_of_numbers )

print( numbers_in_chain )

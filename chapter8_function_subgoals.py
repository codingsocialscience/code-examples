def mean( list ):
  sum = 0
  for item in list:
    sum = sum + item

  number_of_items = len( list )
  if number_of_items == 0:
    return 0

  return sum / number_of_items


def variance( list, mean ):
  sum = 0
  for item in list:
    sum = sum + ( item - mean ) ** 2

  number_of_items = len( list )
  if number_of_items == 0:
    return 0

  return sum / number_of_items

def print_stars( list ):
  for item in list:
    item = int( item )
    print( item * '*' )

mega_collector = {}

for line in open('experimental_data.txt'):
    condition = line.split(',')[0].strip()
    measurement = float( line.split(',')[1].strip() )

    if condition not in mega_collector:
      mega_collector[ condition ] = []

    mega_collector[ condition ].append( measurement )

for condition, measurements in mega_collector.items():
  m = mean( measurements )
  v = variance( measurements , m )
  list = []
  list.append( m )
  list.append( v )
  print_stars( list )

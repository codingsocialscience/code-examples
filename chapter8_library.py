import statistics

def visualise( list ):
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
  m = statistics.mean( measurements )
  v = statistics.variance( measurements )
  items = []
  items.append( m )
  items.append( v )
  visualise( items )

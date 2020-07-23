degrees = {}

degrees['A'] = 0
degrees['B'] = 0
degrees['C'] = 0
degrees['D'] = 0
degrees['E'] = 0
degrees['F'] = 0
degrees['G'] = 0

for line in open('edgelist.txt'):

  node1 = line.split('-')[0].strip()
  degrees[ node1 ] = degrees[ node1 ] + 1

  node2 = line.split('-')[1].strip()
  degrees[ node2 ] = degrees[ node2 ] + 1

for node_name, degree_value in degrees.items():
  print( node_name , 'has the degree of:', degree_value )

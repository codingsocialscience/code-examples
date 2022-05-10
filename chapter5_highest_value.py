votes = []

for line in open('candidates.csv'):
  line = line.split(',')
  candidate_votes = int( line[3] )
  votes.append( candidate_votes )

votes.sort() ## the lowest value is now in index 0

print( "Highest votes", votes[-1] )
print( "Second-highest votes", votes[-2] )

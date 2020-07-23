votes = []

for line in open('candidates.csv'):

  line = line.split(',')

  candidate_votes = int( line[2] )

  votes.append( candidate_votes )

votes.sort() ## sorts the list so that lowest value is in index 0

print( "Heighest votes", votes[-1] )
print( "Second heighests votes", votes[-2] )

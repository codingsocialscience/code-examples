for line in open("emperors.txt"):
  line = line.split(",")
  name = line[0]
  birth_year = float( line[1] )
  death_year = float( line[2] )
  start_of_reign = float( line[3] )
  end_of_reign = float( line[4] )

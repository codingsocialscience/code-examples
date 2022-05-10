import csv

for row in csv.reader( open("emperors.csv") ):
  name = row[0]
  birth_year = float( row[1] )
  death_year = float( row[2] )
  start_of_reign = float( row[3] )
  end_of_reign = float( row[4] )

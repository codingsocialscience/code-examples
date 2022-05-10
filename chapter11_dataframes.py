import pandas

data = pandas.read_csv( 'emperors_with_header.csv' )

data['age'] = data['death_year'] - data['birth_year'] ## create a new variable: age
data['reign'] = data['reign_end'] - data['reign_start']

print( data.head() ) ## examine the first few rows of data

print( data['age'].mean() )
print( data['reign'].sum() ) ## return how many years these people reigned

above_mean = data[ data['age'] > data['age'].mean() ]
print( above_mean.head() ) ## examine only those emperors above the mean age

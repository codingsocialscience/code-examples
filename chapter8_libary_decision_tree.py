## create new data matrix for decision-tree analysis

import csv

dependent = 'V10'
independent = [ 'V4', 'V5', 'V6', 'V7', 'V8', 'V9']

dependent_data = []
independent_data = []

recode = { 1 : 'Very happy',
          2 : 'Rather happy',
          3 : 'Not very happy',
          4 : 'Not at all happy' }



for line in csv.DictReader( open('wvs.csv') ):

    if int(line['V2']) == 752:

        dep = int(line[ dependent ] )

        if dep > 0:

            dependent_data.append( recode[ dep]  )

            dd = []
            for variable in independent:
                dd.append( line[variable] )
            independent_data.append( dd )

import pickle

data = [1,2,3]
data2 = [1,1,1]

## pickle.dump can only store one object at a time, so we need to save these separately
pickle.dump( data, open( 'example_data.pickle', 'wb' ) ) ## wb refers to writing in a binary format
pickle.dump( data2, open( 'example_data2.pickle', 'wb' ) )

data = pickle.load( open( 'example_data.pickle', 'rb' ) ) ## rb refers to reading data in binary format
data2 = pickle.load( open( 'example_data2.pickle', 'rb' ) )

print( data )
print( data + data2 )

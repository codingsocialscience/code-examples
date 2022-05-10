import sqlite3

## this ensures that the queries' results (i.e., rows) have dictionary-like format
def dict_factory(cursor, row):
    d = {}
    for idx, col in enumerate(cursor.description):
        d[col[0]] = row[idx]
    return d

database_connection = sqlite3.connect('example.db')
database_connection.row_factory = dict_factory
cursor = database_connection.cursor()

## SQL commands end with the character ;

posts = cursor.execute("SELECT * FROM posts;").fetchall() ## execute a database command and store all the results in a variable

for row in posts:
  print( row['text'] )


cursor.execute("""INSERT INTO posts(text) VALUES ("This post has no comments.");""") ## execute the command without storing the resulting values

database_connection.commit() ## store the changes made
database_connection.close() ## close the database connection

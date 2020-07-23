def fix_format( text ):
  text = text.replace('D', '.')
  number = float( text )
  return number

for line in open('broken_data.txt'):
  salary = line.split(',')[0]
  months = line.split(',')[1]
  salary = fix_format( salary )
  months = fix_format( months )
  print("Annual salary is", salary * months )

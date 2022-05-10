postcodes <- list(
  '14853' = 'Ithaca',
  '94305' = 'Palo Alto',
  '27708' = 'Durham'
)

for( code in names( postcodes ) ) {
  city <- postcodes[[ code ]]
  print( paste( 'ZIP code', code, 'refers to', city ) )
}

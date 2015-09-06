window.Number.prototype.toRoman = ->
  output = ""
  val = this
  
  while val >= 1000
    output += 'M'
    val -= 1000

  if val >= 900
    output += 'CM'
    val -= 900

  while val >= 500
    output += 'D'
    val -= 500

  if val >= 400
    output += 'CD'
    val -= 400

  while val >= 100
    output += 'C'
    val -= 100

  if val >= 90
    output += 'XC'
    val -= 90

  if val >= 50
    output += 'L'
    val -= 50

  if val >= 40
    output += 'XL'
    val -= 40

  while val >= 10
    output += 'X'
    val -= 10

  if val >= 9
    output += 'IX'
    val -= 9

  if val >= 5
    output += 'V'
    val -= 5

  while val >= 1
    output += 'I'
    val -= 1

  return output
exports.toRomanNumeral = (num) ->
  output = ""
  
  if num % 1 != 0
    num = Math.floor(num)
  
  while num >= 1000
    output += 'M'
    num -= 1000

  if num >= 900
    output += 'CM'
    num -= 900

  while num >= 500
    output += 'D'
    num -= 500

  if num >= 400
    output += 'CD'
    num -= 400

  while num >= 100
    output += 'C'
    num -= 100

  if num >= 90
    output += 'XC'
    num -= 90

  if num >= 50
    output += 'L'
    num -= 50

  if num >= 40
    output += 'XL'
    num -= 40

  while num >= 10
    output += 'X'
    num -= 10

  if num >= 9
    output += 'IX'
    num -= 9

  if num >= 5
    output += 'V'
    num -= 5

  while num >= 1
    output += 'I'
    num -= 1

  return output
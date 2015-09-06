{toRomanNumeral} = require('romanNumerals')

exports.toRomanText = (text) ->
  text = text.toUpperCase()
  text.replace(/[JUW]/g, replacer)
  text.replace(/\d+/g, (match) -> toRomanNumeral(parseInt match, 10))

  return text

  replacer = (match) -> 
    switch match
      when match is 'J'
        return 'I'
      when match is 'U' or 'W'
        return 'V'
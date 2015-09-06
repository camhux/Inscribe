{toRomanNumeral} = require('./romanNumerals.coffee')

exports.toRomanText = (text) ->

  letterReplacer = (match) -> 
    switch
      when match is 'J'
        return 'I'
      when match is 'U' or match is 'W'
        return 'V'

  text = text.toUpperCase()
  text = text.replace(/[JUW]/g, letterReplacer)
    .replace(/\d+/g, (match) -> toRomanNumeral(parseInt match, 10))
    .replace(/[^\w]+/g, '•')

  return text

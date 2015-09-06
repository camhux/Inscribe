{toRoman} = require('../romanText.coffee')

module.exports = class Text extends Backbone.Model

  initialize: (engText: @engText) ->
    @romanText = toRoman @engText
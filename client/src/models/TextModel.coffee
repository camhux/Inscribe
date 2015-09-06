{toRoman} = require('../romanText.coffee')

module.exports = class Text extends Backbone.Model

  initialize: ({@engText}) ->
    @romanText = toRoman @engText

Backbone = require 'backbone'
{toRomanText} = require('../romanText.coffee')

module.exports = class Text extends Backbone.Model

  initialize: (engText) ->
    @set 'engText', engText
    @set 'romanText', toRomanText engText

Backbone = require 'backbone'
Texts = require('../collections/TextsCollection.coffee')
Text = require './TextModel.coffee'

module.exports = class App extends Backbone.Model

  initialize: ->

  processText: (input) ->
    @set 'text', new Text(input)
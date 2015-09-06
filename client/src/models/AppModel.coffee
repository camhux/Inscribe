{Texts} = require('../collections/TextsCollection.coffee')

module.exports = class App extends Backbone.Model

  initialize: ->
    @set 'texts', new Texts()
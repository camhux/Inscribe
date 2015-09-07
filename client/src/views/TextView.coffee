_ = require 'underscore'
Backbone = require 'backbone'

module.exports = class TextView extends Backbone.View

  template: _.template require "./templates/TextView.html"

  events:
    'click .toggle-text': -> @displayTranslated = !@displayTranslated; @render()

  initialize: ->
    @displayTranslated = true
    @render()

  render: ->
    debugger
    data = if @displayTranslated
      text: @model.get('romanText')
      buttonText: 'Show original'
    else
      text: @model.get('engText')
      buttonText: 'PROPONO•IN•MODVM•LATINI'

    @$el.empty()
    @$el.html(@template data)
_ = require 'underscore'
Backbone = require 'backbone'

module.exports = class FieldView extends Backbone.View

  template: _.template require './templates/FieldView.html'

  initialize: ->
    @render()

  render: ->
    @$el.html @template()
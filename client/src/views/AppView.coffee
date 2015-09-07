_ = require 'underscore'
Backbone = require 'backbone'
FieldView = require './FieldView.coffee'
TextView = require './TextView.coffee'

module.exports = class AppView extends Backbone.View

  template: _.template require('./templates/AppView.html')

  initialize: ->
    @render()
    @listenTo(@model, 'change:text', @render)

  events:
    'click .submit-text': 'handleSubmit'

  handleSubmit: (e) =>
    text = @field.$('textarea').val()
    @field.$('textarea').val('')
    @model.processText(text) if text != ''

  render: ->
    @$el.html @template()

    @field = new FieldView()
    @$el.append(@field.el)

    if textModel = @model.get('text')
      @text = new TextView('model': textModel)
      @$el.append(@text.el)
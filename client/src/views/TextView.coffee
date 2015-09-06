module.exports = class TextView extends Backbone.View

  template: _.template require "./templates/TextView.html"

  events:
    'click .toggle-text': -> @displayTranslated = !@displayTranslated; @render()

  initialize ->
    @render()
    @displayTranslated = true

  render ->
    data = if @displayTranslated
      text: @model.get('romanText')
      buttonText: 'PROPONO•IN•MODVM•LATINI'
    else
      text: @model.get('engText')
      buttonText: 'Show original'

    @$el.empty()
    @$el.html(@template data)
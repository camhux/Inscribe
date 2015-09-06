module.exports = class TextView extends Backbone.View

  template: _.template require "./templates/TextView.html"

  events:
    'click .toggle-text': -> @displayTranslated = !@displayTranslated; @render()

  initialize ->
    @render()
    @displayTranslated = true

  render ->
    @$el.empty()
    buttonText = 'Show original' if @displayTranslated else 'PROPONO•IN•MODVM•LATINI'
    @$el.html(@template {'text': @model.get('text'), 'buttonText': })
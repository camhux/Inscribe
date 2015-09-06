module.exports = class TextView extends Backbone.View

  initialize ->
    @render()
    @options.displayTranslated = true

  render ->
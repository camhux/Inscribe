module.exports = class AppView extends Backbone.View

  template: _.template require('./templates/AppView.html')

  events:

  render: ->
    @$el.html @template()

    @text = null
    @field = new FieldView()
    @$el.append(@field.el)
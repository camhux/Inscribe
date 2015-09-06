module.exports = class AppView extends Backbone.View

  template: _.template require('./templates/AppView.html')

  render: ->
    @$el.html @template()
    @field = new FieldView()
    @$el.append(@field.el)
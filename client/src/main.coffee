window.$ = require 'jquery'
AppView = require './views/AppView.coffee'
AppModel = require './models/AppModel.coffee'

window.app = app = new AppView(model: new AppModel)
app.$el.appendTo '#main'
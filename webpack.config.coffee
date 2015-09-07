path = require 'path'

module.exports =
  entry: path.join __dirname, 'client/src/main.coffee'

  output:
    path: path.join __dirname, 'client/build'
    filename: 'bundle.js'

  module:
    loaders: [
      {
        test: /\.coffee$/
        loader: 'coffee'
      }
      {
      test: /\.html$/
      loader: 'html'  
      }
    ]

  resolve:
    alias:
      jquery: path.join __dirname, 'node_modules/jquery/dist/jquery.js'
      underscore: path.join __dirname, 'node_modules/backbone/node_modules/underscore/underscore.js'
      backbone: path.join __dirname, 'node_modules/backbone/backbone.js'

  resolveLoader:
    root: path.join __dirname, 'node_modules'
module.exports =
  context: __dirname + '/client/src/'
  entry: 'main.coffee'
  module:
    loaders: [
      'test': /^\.coffee$/, 'loader': 'coffee' 
    ]
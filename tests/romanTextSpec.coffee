chai = require 'chai'
expect = chai.expect

{toRomanText} = require '../client/src/toRomanText'

describe 'toRomanText', ->
  text = "Just doing some tests here folks.
          You need not worry. Maybe just 1 test."

  roman = toRomanText text

  it 'should return a string', ->
    expect(typeof roman).to.be 'string'

  it 'should not return an identical string', ->
    expect(roman).to.not.be text

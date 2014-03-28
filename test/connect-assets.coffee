expect = require 'expect.js'
oolong = require '..'
connectAssets = require '../lib/connect-assets'

describe 'connect-assets middleware', ->

  it "registers js and css helpers with oolong", ->
    expect(oolong.js).to.be undefined
    expect(oolong.css).to.be undefined
    connectAssets()
    expect(oolong.js).to.be.a 'function'
    expect(oolong.css).to.be.a 'function'

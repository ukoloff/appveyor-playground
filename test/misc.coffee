assert = require 'assert'

describe 'Some tests', ->

  it 'are ok', ->
    assert true

  it 'fail', ->
    @skip()
    assert false

  it 'are ignored', ->
    @skip()
    assert false

  it 'do some things...', ->
    require '..'

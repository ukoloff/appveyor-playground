api = require './api'
withOut = require 'withOut'
require './zip'

console.log res = do withOut ->
  s = "Hello, world!"
  (tag '!DOCTYPE', true) html: true
  html ->
    head ->
      title s
    body ->
      h1 s

api res

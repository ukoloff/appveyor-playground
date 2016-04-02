withOut = require 'withOut'
require './zip'

console.log do withOut ->
  s = "Hello, world!"
  (tag '!DOCTYPE', true) html: true
  html ->
    head ->
      title s
    body ->
      h1 s

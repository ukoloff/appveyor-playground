withOut = require 'withOut'

console.log do withOut ->
  s = "Hello, world!"
  (tag '!DOCTYPE', false) html: true
  html ->
    head ->
      title s
    body ->
      h1 s

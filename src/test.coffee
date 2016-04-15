appveyor = require './appveyor'
withOut = require 'withOut'
require './zip'

appveyor.message 'Template generated', do withOut ->
  s = "Hello, world!"
  (tag '!DOCTYPE', true) html: true
  html ->
    head ->
      title s
    body ->
      h1 s

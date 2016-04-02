http = require 'http'
url = require 'url'

module.exports = (msg)->
  return unless api = process.env.APPVEYOR_API_URL

  body = JSON.stringify 
    message: msg
    category: 'info'

  z = url.parse api
  z.method = 'POST'
  z.headers = 
    'Content-Type': 'application/json'
    'Content-Length': body.length

  req = http.request z
  req.write body
  req.end()


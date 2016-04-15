console.log __filename

fs = require 'fs'
yazl = require 'yazl'

src = 
  npm: 'package.json'
  ci: 'appveyor.yml'
  repo: 'README.md'

z = new yazl.ZipFile()
z.outputStream.pipe fs.createWriteStream 'config.zip'
.on 'close', ->
  console.log 'ZIP created!'

for k, v of src
  z.addFile v, v

z.end()

console.log '+', __filename

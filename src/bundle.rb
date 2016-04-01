require 'fileutils'

FileUtils.mkdir_p '.bundle'

File.write ".bundle/config", <<EOT
---
BUNDLE_PATH: vendor/bundle
BUNDLE_DISABLE_SHARED_GEMS: '1'
EOT

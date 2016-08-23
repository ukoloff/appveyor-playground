module Minitest
  def self.plugin_seed_init options
    ::AppVeyor::Worker.message "#{name} seed: #{options[:seed]}"
  end
end

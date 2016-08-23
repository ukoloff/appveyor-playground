module Minitest
  def self.plugin_seed_init options
    puts ">>>#{name} seed: #{options[:seed]}"
  end
end

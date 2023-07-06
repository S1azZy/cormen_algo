require "minitest/autorun"
require 'pathname'

current_dir = File.dirname(__FILE__)
root_dir = Pathname.new(current_dir).parent

Dir[root_dir.join("chapters", "**", "*.rb")].each do |file|
  require file
end
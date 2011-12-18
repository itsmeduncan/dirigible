$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'bundler/setup'
require 'tempfile'
require 'dirigible'

RSpec.configure do |config|
  config.mock_with :mocha
end

Dirigible.logger = Logger.new(Tempfile.new('dirigible.test.logger'))

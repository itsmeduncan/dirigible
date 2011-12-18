require "dirigible/version"
require "logger"

$:.unshift(File.dirname(__FILE__))

module Dirigible
  autoload :Client, 'dirigible/client'
  autoload :Token, 'dirigible/token'
 
  class << self
    attr_accessor :logger
  end

  Dirigible.logger = Logger.new(STDOUT)

end

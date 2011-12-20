$:.unshift(File.dirname(__FILE__))

require "logger"
require "dirigible/version"
require "dirigible/client"

module Dirigible

  class << self
    attr_accessor :logger
  end

  Dirigible.logger = Logger.new(STDOUT)

end

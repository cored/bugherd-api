$: << File.dirname(__FILE__) unless $:.include?(File.dirname(__FILE__))

require 'rubygems'
require 'active_support'
require 'active_resource'

module BugherdAPI

  class Error < StandardError; end

  class << self
    def authenticate(email, password)
      @email = email
      @password = password
    end
  end
end

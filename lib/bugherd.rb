$: << File.dirname(__FILE__) unless $:.include?(File.dirname(__FILE__))

require 'rubygems'
require 'active_support'
require 'active_resource'

module BugherdAPI
  extend ActiveSupport::Autoload

  autoload :Base,       'bugherd/base'
  autoload :User,       'bugherd/user'
  autoload :Project,    'bugherd/project'
  class Error < StandardError; end

  class << self
    def authenticate(email, password)
      @email = email
      @password = password
    end

    def resources
      @resources ||= []
    end
  end

end

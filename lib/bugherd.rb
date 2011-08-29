$: << File.dirname(__FILE__) unless $:.include?(File.dirname(__FILE__))

require 'rubygems'
require 'active_support'
require 'active_resource'
require 'bugherd/base'

module BugherdAPI
  extend ActiveSupport::Autoload

  autoload :User,       'bugherd/user'
  autoload :Project,    'bugherd/project'
  autoload :Task,       'bugherd/task'
  autoload :Comment,    'bugherd/comment'
  class Error < StandardError; end

  class << self
    attr_accessor :email, :password
    def authenticate(email, password)
      self.email    = email
      self.password = password

      self::Base.user     = email
      self::Base.password = password

    end

    def resources
      @resources ||= []
    end

  end

end

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
  class Error < StandardError; end

  class << self
    attr_accessor :email, :password
    def authenticate(email, password)
      self.email = email
      self.password = password
      resources.each do |klass|
        update_auth(klass)
      end
    end

    def resources
      @resources ||= []
    end

    def update_auth(resource)
      return unless email && password
      resource.user     = email
      resource.password = password
    end
  end

end

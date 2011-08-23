module BugherdAPI

  class Base < ActiveSupport::Base
    self.format = :xml
    self.site = 'http://www.bugherd.com/api_v1/'
    def self.inhereted(base)
      BugherdAPI.resources << base
      super
    end
  end
end

module BugherdAPI

  class Base < ActiveResource::Base
    self.format = :xml
    self.site = 'http://www.bugherd.com/api_v1/'
    def self.inhereted(base)
      BugherdAPI.resources << base
      super
    end
  end
end

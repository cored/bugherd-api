require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "BugherdAPI::User" do 
  before(:each) do 
    BugherdAPI.authenticate('user@email.com', '123456')
    ActiveResource::HttpMock.respond_to do |mock|
      mock.get '/api_v1/users.xml', {}, fixture_for('users', 'xml'), 200
    end
  end

  it "should retrieve all users from bugherd server" do 
    users = BugherdAPI::User.find(:all) 
    users.should_not be_nil
  end
end

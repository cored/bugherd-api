require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "BugherdAPI::User" do 
  before(:each) do 
    BugherdAPI.authenticate('user@email.com', '123456')
    headers = {'Authorization' => 'Basic dXNlckBlbWFpbC5jb206MTIzNDU2', 'Accept' => 'application/xml'}
    ActiveResource::HttpMock.respond_to do |mock|
      mock.get '/api_v1/users.xml', headers, fixture_for('users', 'xml'), 200
    end
  end

  it "should retrieve all users from bugherd server" do 
    users = BugherdAPI::User.find(:all) 
    users.should_not be_nil
  end

  it "should retrieve valid fields for a single user" do 
    user = BugherdAPI::User.find(:all).first
    user.name.should == 'Rafael'
    user.id.should == 1798
    user.surname.should == 'George'
    user.email.should == 'george.rafael@gmail.com'
  end
end

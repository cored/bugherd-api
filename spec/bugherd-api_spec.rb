require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "BugherdApi" do

  context "Authentication" do 
    it "should authenticate with Bugherd server" do 
      bugherd = BugherdAPI.authenticate('user@email.com', '123456')
      bugherd.should not_be_nil
    end
  end
end

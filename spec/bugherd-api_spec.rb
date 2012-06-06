require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "BugherdApi" do

  context "Authentication" do 
    subject { BugherdAPI.authenticate('user@email.com', '123456') }
    it { should_not be_nil }
  end
end

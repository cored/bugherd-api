require 'spec_helper'

describe Bugherd::Api do
  it 'should have a version number' do
    Bugherd::Api::VERSION.should_not be_nil
  end

  it 'should do something useful' do
    false.should be_true
  end
end

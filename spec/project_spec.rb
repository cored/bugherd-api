require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "BugherdAPI::Project" do 
  before(:each) do 
    BugherdAPI.authenticate('user@email.com', '123456')
    ActiveResource::HttpMock.respond_to do |mock|
      mock.get '/api_v1/projects.xml', {}, fixture_for('projects', 'xml'), 200
      mock.get '/api_v1/projects/1458.xml', {}, fixture_for('projects/1458','xml'), 200
    end
  end

  it "should load all projects" do 
    projects = BugherdAPI::Project.find(:all)
    projects.should_not be_nil 
  end

  it "shoulod load a single project" do 
    project = BugherdAPI::Project.find(1458)
    project.should_not be_nil
  end

end

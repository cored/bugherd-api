require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "BugherdAPI::Project" do 
  before(:each) do 
    BugherdAPI.authenticate('user@email.com', '123456')
    headers = {'Authorization' => 'Basic dXNlckBlbWFpbC5jb206MTIzNDU2', 'Accept' => 'application/xml'}
    ActiveResource::HttpMock.respond_to do |mock|
      mock.get '/api_v1/projects.xml', headers, fixture_for('projects', 'xml'), 200
      mock.get '/api_v1/projects/1458.xml', headers, fixture_for('projects/1458','xml'), 200
    end
  end

  context "Project retrieval" do 
    it "should load all projects" do 
      projects = BugherdAPI::Project.find(:all)
      projects.should_not be_nil 
    end

    it "shoulod load a single project" do 
      project = BugherdAPI::Project.find(1458)
      project.should_not be_nil
    end

    it "should check for projects fields" do 
      project = BugherdAPI::Project.find(1458)
      project.name.should == 'clutchapptest'
      project.devurl.should == 'http://clutchapptest.ticketmaster.com'
    end
  end

  context "Project creation, update and delete" do 
    it "should create a project"
    it "should update a project"
    it "should delete a project"
  end
end

require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "BugherdAPI::Project" do 
  let(:bugherd_api) { BugherdAPI.authenticate('user@email.com', '123456') }
  let(:headers) { {'Authorization' => 'Basic dXNlckBlbWFpbC5jb206MTIzNDU2', 'Accept' => 'application/xml'} }
  let(:project_class) { BugherdAPI::Project }

  describe "Retrieving projects" do 
    before(:each) do 
      ActiveResource::HttpMock.respond_to do |mock|
        mock.get '/api_v1/projects.xml', headers, fixture_for('projects'), 200
        mock.get '/api_v1/projects/1458.xml', headers, fixture_for('projects/1458'), 200
      end
    end

    context "when calling #find(:all)" do 
      subject { BugherdAPI::Project.find(:all) }
      it { should be_an_instance_of Array }
      it { should_not be_nil }
    end

    context "when calling #find(id)" do 
      subject { BugherdAPI::Project.find(1458) }
      it { should_not be_nil }
      it { should be_an_instance_of project_class }
      it { subject.name.should be_eql 'clutchapptest' }
      it { subject.devurl.should be_eql 'http://clutchapptest.ticketmaster.com' }
    end
  end

  context "Project creation, update and delete" do 
    it "should create a project"
    it "should update a project"
    it "should delete a project"
  end
end

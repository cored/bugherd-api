require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "BugherdAPI::Project" do 
  let(:headers) { {'Authorization' => 'Basic dXNlckBlbWFpbC5jb206MTIzNDU2' } }
  let(:headers_get) { headers.merge('Accept' => 'application/xml') }
  let(:headers_post) { headers.merge('Content-Type' => 'application/xml') }
  let(:project_class) { BugherdAPI::Project }

  describe "Retrieving projects" do 
    before(:each) do 
      ActiveResource::HttpMock.respond_to do |mock|
        mock.get '/api_v1/projects.xml', headers_get, fixture_for('projects'), 200
        mock.get '/api_v1/projects/1458.xml', headers_get, fixture_for('projects/1458'), 200
      end
    end

    context "when calling #find(:all)" do 
      subject { project_class.find(:all) }
      it { should be_an_instance_of Array }
      it { should_not be_nil }
    end

    context "when calling #find(id)" do 
      subject { project_class.find(1458) }
      it { should_not be_nil }
      it { should be_an_instance_of project_class }
      it { subject.name.should be_eql 'clutchapptest' }
      it { subject.devurl.should be_eql 'http://clutchapptest.ticketmaster.com' }
    end
  end

  describe "CRUD behaviour for projects" do 
    before(:each) do 
      ActiveResource::HttpMock.respond_to do |mock|
        mock.post '/api_v1/projects.xml', headers_post, '', 200
        mock.get '/api_v1/projects/1458.xml', headers_get, fixture_for('projects/1458'), 200
        mock.put '/api_v1/projects/1458.xml', headers_post, '', 200
      end
    end

    context "when calling #new and then #save" do 
      subject { project_class.new :name => 'clutchapptest', :devurl => 'http://clutchapptest.ticketmaster.com' }
      it { should_not be_nil }
      it { subject.save.should be_true }
    end

    context "when calling #save after chaging a project" do 
      it "should update a project" do 
        p = project_class.find(1458)
        p.should_not be_nil
        p.name = 'new project'
        p.save.should be_true
      end
    end
  end
end

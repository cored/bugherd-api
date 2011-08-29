require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "BugherdAPI::Comment" do 
  before(:each) do 
    headers = {'Authorization' => 'Basic dXNlckBlbWFpbC5jb206MTIzNDU=', 'Accept' => 'application/xml'}
    ActiveResource::HttpMock.respond_to do |mock|
      mock.get '/api_v1/projects/1458/tasks/4950/comments.xml', headers, fixture_for('comments', 'xml'), 200
    end
    @project_id = 1458
    @task_id = 4950
  end

  context "retrieve comments" do
    it "should retrieve all comments" do 
      BugherdAPI.authenticate('user@email.com', '12345')
      comments = BugherdAPI::Comment.find(:all, :params => {:project_id => 1458, :task_id => 4950})
      comments.should_not be_nil
    end
  end
end

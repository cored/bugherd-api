require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "BugherdAPI::Task" do 
  before(:each) do 
    BugherdAPI.authenticate('user@email.com', '123456')
    ActiveResource::HttpMock.respond_to do |mock|
      mock.get '/api_v1/projects/1458/tasks.xml', {}, fixture_for('tasks', 'xml'), 200
      mock.get '/api_v1/projects/1458/tasks/4950.xml', {}, fixture_for('tasks/4950', 'xml'), 200
    end
    @project_id = 1458
  end

  context "Retrieving tasks" do 
    it "should retrieve all tasks" do 
      tasks = BugherdAPI::Task.find(:all, :params => { :project_id => @project_id })
      tasks.should_not be_nil
    end

    it "should retrieve a single task" do 
      task = BugherdAPI::Task.find(4950, :params => { :project_id => @project_id })
      task.should_not be_nil
    end
  end
end

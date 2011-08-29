module BugherdAPI
  class Comment < Base
    self.site += 'projects/:project_id/tasks/:task_id/'
  end
end

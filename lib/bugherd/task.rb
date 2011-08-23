module BugherdAPI
  class Task < Base
    self.site += 'projects/:project_id/'
  end
end

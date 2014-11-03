class Knockoutjs::TasksController < AuthorizedController

  respond_to :html

  def index
    @task = Task.new
  end
end

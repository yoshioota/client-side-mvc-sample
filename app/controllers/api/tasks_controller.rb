class Api::TasksController < ApplicationController

  before_action :authenticate_user!

  before_action :set_task, only: [:show, :edit, :update, :destroy]

  respond_to :json

  def index
    @tasks = current_user.tasks.order('id DESC').all
    respond_with(@tasks)
  end

  def show
    respond_with(@task)
  end

  def new
    @task = Task.new
    respond_with(@task)
  end

  def edit
  end

  def create
    @task = current_user.tasks.build(task_params)
    @task.save
    respond_with(@task)
  end

  def update
    @task.update(task_params)
    respond_with(@task)
  end

  def destroy
    @task.destroy
    respond_with(@task)
  end

  private

    def set_task
      @task = current_user.tasks.find(params[:id])
    end

    def task_params
      params.require(:task).permit(:title, :done)
    end
end

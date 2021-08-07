class TasksController < ApplicationController
  def new
    @task = Task.new
  end
  def create
    @task = Task.new(task_params).save
    redirect_to tasks_path
  end
  def index
    @tasks = Task.all
  end
  def show
    @tasks = Task.find(params[:id])
  end
  def edit
    @tasks = Task.find(params[:id])
  end
  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

end

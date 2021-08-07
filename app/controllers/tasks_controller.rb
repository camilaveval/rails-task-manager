class TasksController < ApplicationController
  def new
    @task = Task.new
  end
  def create
  end
  def index
    @tasks = Task.all
  end
  def show
    @tasks = Task.find(params[:id])
  end
end

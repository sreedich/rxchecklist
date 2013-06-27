class TasksController < ApplicationController 

  def index
  end 

  def new
    @task = Task.new
  end 

  def create
    @task = Task.new(params[:task])

    if @task.save!
      redirect_to new_task_path, notice: 'task successfully created'
    else
      render action: 'new'
    end 
  end 
end

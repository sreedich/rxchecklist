class TasksController < ApplicationController 

  def index
  end 

  def new
    @checklist = Checklist.find(params[:checklist_id])
    @task = @checklist.tasks.build 
  end 

  def create
    @checklist = Checklist.find(params[:checklist_id])
    @task = @checklist.tasks.new(params[:task])

    if @task.save!
      redirect_to checklist_tasks_path, notice: 'task successfully created'
    else
      render action: 'new'
    end 
  end 
end

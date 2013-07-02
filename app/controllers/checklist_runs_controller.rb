class ChecklistRunsController < ApplicationController

  def new
    @checklist = Checklist.find(params[:checklist_id])
    @checklist_run = @checklist.checklist_runs.create(user: current_user)
    build_task_completions
  end 
  
  def update
    @checklist_run = ChecklistRun.find(params[:id])
    if @checklist_run.update_attributes(params[:checklist_run])
      redirect_to user_path(current_user)
    else
      # do something else
    end
  end

  protected
  def build_task_completions
    @checklist.tasks.each do |t|
    @checklist_run.task_completions.create(task: t)
    end
  end



end

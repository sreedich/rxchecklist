class ChecklistRunsController < ApplicationController

  def new
    @checklist = Checklist.find(params[:checklist_id])
    # binding.pry 
    @checklist_run = @checklist.checklist_runs.build
  end 

  def create
    
  end


end

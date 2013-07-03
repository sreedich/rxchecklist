class ChecklistsController < ApplicationController

  def index
  end 

  def new
    @checklist = current_user.checklists.build 
  end 

  def create

    @checklist = current_user.checklists.new(params[:checklist])

    if @checklist.save!
      redirect_to @checklist, notice: 'checklist successfully created'
    else
      render action: 'new'
    end 
  end 

  def show
    @checklist = Checklist.find(params[:id])
  end 

end




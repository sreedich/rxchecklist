class ChecklistsController < ApplicationController

  def index
  end 

  def new
    if !current_user
      redirect_to new_user_registration_path
    else
    @checklist = current_user.checklists.build 
    end
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

  def destroy 
    
    @checklist = Checklist.find(params[:id])
  if @checklist.user == current_user
    @checklist.destroy
    redirect_to user_path(current_user)
  else
    redirect_to @checklist
    end 
  end 

end




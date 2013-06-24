class ChecklistsController < ApplicationController

  def new
    @user = User.find(params[:user_id])
    @checklist = @user.checklists.build 
  end 

  def create
    @user = User.find(params[:user_id])
    @checklist = @user.checklists.new(params[:checklist])

    if @checklist.save!
      redirect_to root_path, notice: 'checklist successfully created'
    else
      render action: 'new'
    end 
  end 
end


# nest tasks under checklist 

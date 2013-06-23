class ChecklistsController < ApplicationController

  def new
    @checklist = Checklist.new 
  end 

  def create
    @checklist = Checklist.new(params[:checklist])

    if @checklist.save
      redirect_to root_path, notice: 'checklist successfully created'
    else
      render action: 'new'
    end 
  end 
end

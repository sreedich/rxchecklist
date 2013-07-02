class UsersController < ApplicationController
  before_filter :authenticate_user!

  def new
    @user = User.new 
  end

  def create
    @user = User.new(params[:user])
  end

  def show
    @checklist = Checklist.where(:user_id => current_user)
  end 
  
end

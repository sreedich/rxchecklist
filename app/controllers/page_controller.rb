class PageController < ApplicationController
  helper_method :resource, :resource_name, :devise_mapping 

  def index
  end



protected 

 def resource
    @resource ||= User.new
  end

  def resource_name
    :user
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end




end

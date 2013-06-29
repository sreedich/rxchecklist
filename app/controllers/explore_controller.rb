class ExploreController < ApplicationController
  def index
    @checklists = Checklist.all 
  end
end

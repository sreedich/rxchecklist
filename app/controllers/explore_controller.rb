class ExploreController < ApplicationController
  def index
    # @checklists = Checklist.all
    @q = Checklist.search(params[:q])
    @checklists = @q.result
  end
end

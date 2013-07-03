class ExploreController < ApplicationController
  def index
    # @checklists = Checklist.all
    @q = Checklist.search(params[:q])
    @checklists = @q.result.page(params[:page]).per(10)

  end
end

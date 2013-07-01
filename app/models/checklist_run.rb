class ChecklistRun < ActiveRecord::Base
  attr_accessible :checklist_id, :user_id
  belongs_to :checklist 
  belongs_to :user 
end


#

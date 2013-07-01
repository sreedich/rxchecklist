class ChecklistRun < ActiveRecord::Base
  attr_accessible :checklist, :user, :task_completions_attributes
  belongs_to :checklist 
  belongs_to :user

  has_many :task_completions
  accepts_nested_attributes_for :task_completions
end




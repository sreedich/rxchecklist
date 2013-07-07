class Checklist < ActiveRecord::Base
  attr_accessible :title, :description, :user_id, :tasks_attributes 
  validates_presence_of :title
  validates_presence_of :user_id
  belongs_to :user
  has_many :tasks
  has_many :checklist_runs
  accepts_nested_attributes_for :tasks 
  
end

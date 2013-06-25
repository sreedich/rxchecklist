class Checklist < ActiveRecord::Base
  attr_accessible :title, :user_id
  validates_presence_of :title
  validates_presence_of :user_id
  belongs_to :user
  has_many :tasks

end

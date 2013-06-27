class Task < ActiveRecord::Base
  attr_accessible :checklist_id, :name, :position
    validates_presence_of :name
    belongs_to :checklist

end

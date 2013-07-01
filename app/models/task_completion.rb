class TaskCompletion < ActiveRecord::Base
  attr_accessible :completed, :task, :checklist_run,
    :checked_off_at, :checklist_run_id, :state, :task_id,
    :task_completions_attributes

  belongs_to :checklist_run
  belongs_to :task

end

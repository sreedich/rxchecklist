class CreateTaskCompletions < ActiveRecord::Migration
  def change
    create_table :task_completions do |t|
      t.integer :task_id
      t.integer :checklist_run_id
      t.string :state
      t.datetime :checked_off_at
      t.boolean :completed

      t.timestamps
    end
  end
end

class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :name,               :null => false
      t.integer :position
      t.integer :checklist_id,    :null => false

      t.timestamps
    end
  end
end

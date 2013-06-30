class CreateChecklistruns < ActiveRecord::Migration
  def change
    create_table :checklistruns do |t|
      t.integer :checklist_id,    :null => false
      t.integer :user_id,         :null => false

      t.timestamps
    end
  end
end

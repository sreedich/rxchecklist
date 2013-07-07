class AddColumnToChecklist < ActiveRecord::Migration
  def up
    add_column :checklists, :description, :text 
  end

  def down
    remove_column :checklists, :description 
  end
end

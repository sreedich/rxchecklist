class RenameTableChecklistrun < ActiveRecord::Migration
  def up
    rename_table :checklistruns, :checklist_runs 
  end

  def down
    rename_table :checklist_runs, :checklistruns 
  end
end

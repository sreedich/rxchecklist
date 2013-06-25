require 'spec_helper'

describe 'user creates a new task for a checklist' do 

let(:user) {FactoryGirl.create(:user)}
let(:checklist) {FactoryGirl.create(:checklist)}

 
  it 'user visits task page' do 
    visit new_checklist_task_path(checklist)
    expect(page).to have_content 'Task'
    expect(current_path).to eql(new_checklist_task_path(checklist))
  end 

  it 'allows a user to create a task' do
    previous_count = Task.count 
    visit new_checklist_task_path(checklist)
    fill_in 'Name', with: 'This is content for the task field'
    click_on 'Create Task'
    expect(Task.count).to eql(previous_count + 1) 
  end 



end 

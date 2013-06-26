require 'spec_helper'

describe 'user creates a new task for a checklist' do 

let(:user) {FactoryGirl.create(:user)}
let(:checklist) {FactoryGirl.create(:checklist)}

 
  it 'user visits task page' do 
    sign_in_as(user)
    visit new_checklist_path
    expect(page).to have_content 'Add Task'
    expect(current_path).to eql(new_checklist_path)
  end 

 #TODO: start_with? error 
  pending 'allows a user to create a task' do
    sign_in_as(user)
    visit new_checklist_path
    fill_in 'Title', with: 'Test Title'
    click_link 'Add Task'
    fill_in 'Name', with: 'This is content for the task field'
    click_on 'Create Checklist'
    expect(Task.count).to eql(1) 
  end 

  # it 'created task displays on new checklist page' do 
  #   visit new_task_path(checklist)
  #   fill_in 'Name', with: 'This is content for the task field'
  #   click_on 'Create Task'
  #   expect(current_path).to eql(new_task_path(checklist))
  # end 


end 

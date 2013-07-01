require 'spec_helper'


describe 'signed in user checks off tasks' do 

let(:user) {FactoryGirl.create(:user)}
let(:checklist) {FactoryGirl.create(:checklist)}
let(:task) {FactoryGirl.create(:task, checklist: checklist)}

  it 'a user checks off a task' do
    task  
    sign_in_as(user)
    visit checklist_path(checklist)
    click_on 'Use Checklist'
    expect(page).to have_content checklist.title 
    check task.name
    click_on 'Complete'
    task_completion = TaskCompletion.last
    expect(task_completion.task).to eql(task)
    expect(task_completion.checklist_run.checklist).to eql(checklist)
    expect(task_completion.completed).to be_true
  end

end 

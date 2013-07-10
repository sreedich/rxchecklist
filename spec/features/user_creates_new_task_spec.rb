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


end 

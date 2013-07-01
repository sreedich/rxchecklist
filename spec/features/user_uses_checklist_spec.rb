require 'spec_helper'

describe 'signed in user uses a checklist' do 

let(:user) {FactoryGirl.create(:user)}
let(:checklist) {FactoryGirl.create(:checklist)}

  it 'user clicks on use checklist' do 
    sign_in_as(user) 
    visit checklist_path(checklist)
    save_and_open_page
    click_on 'Use Checklist'
    expect(page).to have_content 'Analytics'
  end 

  pending 'user views checklist items' do
    previous_count = ChecklistRun.count  
    sign_in_as(user)
    checklist 
    visit new_checklist_checklist_run_path(checklist)
    click_on 'Complete'
    expect(page).to have_content 'Complete'
    expect(ChecklistRun.count).to eql(previous_count + 1)
  end


end 

require 'spec_helper'


# Acceptance Criteria: 
# new_checklist_path (new page)
# 1) form to create checklist includes text fields, 
#     up/down to move items, and check box 
# 2) checklist title is present at top
# 3) publish button will navigate to user_path (show page) 


describe 'user creates a new checklist' do 

  it 'user visits checklist builder page' do 
    visit new_checklist_path
    expect(page).to have_content 'Checklist Title'
  end 

  it 'allows a user to create a checklist' do 
    previous_count = Checklist.count 
    visit new_checklist_path
    fill_in 'Title', with: 'Checklist Title'
    click_on 'Create Checklist'
    expect(Checklist.count).to eql(previous_count + 1)
  end 



end 

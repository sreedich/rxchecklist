require 'spec_helper'


# Acceptance Criteria: 
# new_checklist_path (new page)
# 1) form to create checklist includes text fields, 
#     up/down to move items, and check box 
# 2) checklist title is present at top
# 3) publish button will navigate to user_path (show page) 


describe 'user creates a new checklist' do


let(:user) {FactoryGirl.create(:user)}

  it 'user visits checklist builder page' do 
    sign_in_as(user)
    visit new_checklist_path
    expect(page).to have_content 'Checklist Title'
  end 

  it 'allows a user to create a checklist' do 
    sign_in_as(user)
    visit new_checklist_path
    fill_in 'Title', with: 'Checklist Title'
    click_on 'Create Checklist'
    expect(Checklist.count).to eql(1)  
  end 

  it 'created checklist displays on user page' do
    sign_in_as(user)
    visit new_checklist_path
    fill_in 'Title', with: 'This is a test Title'
    click_on 'Create Checklist'
    expect(Checklist.last.title).to eq('This is a test Title')
    expect(current_path).to eql(checklist_path(Checklist.last))
    expect(page).to have_content 'successfully' 
  end 
 
end 

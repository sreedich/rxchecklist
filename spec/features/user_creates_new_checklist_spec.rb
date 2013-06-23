require 'spec_helper'


# Acceptance Criteria: 
# new_checklist_path (new page)
# 1) form to create checklist includes text fields, 
#     up/down to move items, and check box 
# 2) checklist title is present at top
# 3) publish button will navigate to user_path (show page) 


describe 'user creates a new checklist' do


let!(:user){FactoryGirl.create(:user)}

  it 'user visits checklist builder page' do 
    visit new_checklist_path
    expect(page).to have_content 'Checklist Title'
  end 

  it 'allows a user to create a checklist' do 
    sign_in_as(user)
    visit new_checklist_path
    fill_in 'Title', with: 'Checklist Title'
    select '1', from: 'User'
    click_on 'Create Checklist'
    expect(Checklist.count).to eql(1)
  end 

# refactor this in authentication helper 
 # def sign_in_as(user)
 #    visit new_user_registration_path
 #    fill_in 'Email', with: user.email 
 #    fill_in 'Password', with: user.password 
 #    click_on 'Sign in'
 #  end
 

end 

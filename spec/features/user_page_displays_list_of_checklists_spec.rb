require 'spec_helper'

describe 'user profile page displays list of checklists' do 

  let(:user) {FactoryGirl.create(:user)}
  let!(:checklist) {FactoryGirl.create(:checklist, user: user)}
  let!(:task) {FactoryGirl.create(:task, checklist: checklist)}

  it 'displays a list of checklists created by user' do 
    sign_in_as(user)
    visit user_path(user)
    expect(page).to have_content(checklist.title)
  end 

# TODO: refactor this test 

  it 'displays a list of checklists used by user' do 
    sign_in_as(user)
    visit new_checklist_checklist_run_path(checklist)
    click_on 'Complete'
    expect(page).to have_content checklist.title
  end 


end

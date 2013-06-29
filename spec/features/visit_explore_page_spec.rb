require 'spec_helper'

describe 'explore page' do 

  let(:user) {FactoryGirl.create(:user)}
  let(:checklists) {FactoryGirl.create_list(:checklist, 10)}
  let(:checklist) {FactoryGirl.create(:checklist)}

  it 'user visits explore page' do 
    visit explore_index_path  
    expect(page).to have_content 'Explore'
    expect(page).to have_content 'Trending'
    expect(page).to have_content 'Featured'
    expect(page).to have_content 'Create New Checklist'
  end

  it 'user can navigate to new checklist page' do
    sign_in_as(user)  
    visit explore_index_path
    click_on 'Create New Checklist'
    expect(page).to have_content 'Checklist Title'
  end 

  it 'user can view a list of checklists' do 
    sign_in_as(user)
    checklists 
    visit explore_index_path
    expect(page).to have_content 'This is an awesome checklist title'
  end 

  it 'user navigates to checklist show page' do 
    sign_in_as(user)
    checklist
    visit explore_index_path
    click_link 'See Details'
    expect(page).to have_content 'This is an awesome checklist title'
  end 

end 

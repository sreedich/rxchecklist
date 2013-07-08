require 'spec_helper'

describe 'explore page' do 

  let(:user) {FactoryGirl.create(:user)}
  let(:checklists) {FactoryGirl.create_list(:checklist, 20)}
  let(:checklist) {FactoryGirl.create(:checklist)}

  it 'user visits explore page' do 
    visit explore_index_path  
    expect(page).to have_content 'Explore'
    expect(page).to have_content 'Featured'
    expect(page).to have_content 'Create a New Checklist'
  end

  it 'user can navigate to new checklist page' do
    sign_in_as(user)  
    visit explore_index_path
    click_on 'Create a New Checklist'
    expect(page).to have_content 'Checklist Title'
  end 

  it 'user can view a list of checklists' do 
    sign_in_as(user)
    checklists 
    visit explore_index_path
    expect(page).to have_content checklists[0].title
    expect(page).to have_content checklists[4].title
  end 

  it 'user navigates to checklist show page' do 
    sign_in_as(user)
    checklist
    visit explore_index_path
    click_link 'See Details'
    expect(page).to have_content checklist.title
  end 

  it 'user can search for a checklist' do 
    sign_in_as(user) 
    checklists 
    visit explore_index_path
    fill_in :q_title_cont, with: checklists[9].title
    click_on 'Search'
    expect(page).to have_content checklists[9].title
  end

  it 'user sees a list of 5 checklists' do 
    sign_in_as(user)
    checklists
    visit explore_index_path
    expect(page).to have_content checklists[4].title
    expect(page).to_not have_content checklists[5].title
  end

  it 'user navigates to 2nd page of checklists' do 
    sign_in_as(user)
    checklists
    visit explore_index_path
    click_on 'Next'
    expect(page).to have_content checklists[5].title
    expect(page).to_not have_content checklists[4].title
  end

end 

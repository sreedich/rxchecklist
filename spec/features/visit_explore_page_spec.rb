require 'spec_helper'

describe 'explore page' do 

  let(:user) {FactoryGirl.create(:user)}

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

end 

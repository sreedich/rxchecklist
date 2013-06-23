require 'spec_helper'

describe "user visits homepage" do 

  it 'directs user to homepage' do 
    visit page_index_path
    expect(current_path).to eql(page_index_path)
  end 

  it 'provides a button to create an account' do 
    visit page_index_path
    expect(page).to have_content 'Signup'
  end 
  
end 

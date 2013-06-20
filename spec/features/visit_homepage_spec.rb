require 'spec_helper'

describe "user visits homepage" do 

  it 'directs user to homepage' do 
    visit '/'
    expect(current_path).to eql(root_path)
  end 

  it 'provides a button to create an account' do 
    visit '/'
    expect(page).to have_content 'Signup'
  end 
  
end 

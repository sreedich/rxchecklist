require 'spec_helper'

describe "user visits homepage" do 

  it 'directs user to homepage' do 
    visit '/'
    expect(current_path).to eql(root_path)
  end 
end 

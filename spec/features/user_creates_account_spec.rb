require 'spec_helper'


     # Acceptance Criteria: 
     # page_index
     # 1) From the home page, user should be able fill out
     #    sign up information
     # 2) User must enter email, password and click a sign up button *
     # 3) If account is successfully created, user will be notified *
     # 4) If account is not successfully created, 
     #    user will be redirected to page_index
     # 5) Successfully registered user will be redirected to explores_path


describe 'user creates an account' do 

  it 'user visits signup page' do
    visit new_user_registration_path
    expect(current_path).to eql(new_user_registration_path)
  end 

  it 'allows user to create an account' do
    visit new_user_registration_path
    fill_in 'Email', with: 'tester@gmail.com'
    fill_in 'Password', with: '12345678'
    fill_in 'Password confirmation', with: '12345678'
    click_on 'Sign up'
    expect(User.count).to eql(1)
  end 

  it 'notifies user that account was successfully created' do 
    visit new_user_registration_path
    fill_in 'Email', with: 'tester@gmail.com'
    fill_in 'Password', with: '12345678'
    fill_in 'Password confirmation', with: '12345678'
    click_on 'Sign up'
    expect(page).to have_content 'Welcome! You have signed up successfully.'
  end 

  it 'navigates signed up user to index page' do
    visit new_user_registration_path
    fill_in 'Email', with: 'tester@gmail.com'
    fill_in 'Password', with: '12345678'
    fill_in 'Password confirmation', with: '12345678'
    click_on 'Sign up'
    save_and_open_page
    expect(current_path).to eql(root_path)
  end 

  it 'rejects user signup when required fields are not filled out' do 
    visit new_user_registration_path
    fill_in 'Email', with: 'tester@gmail.com'
    fill_in 'Password', with: ''
    fill_in 'Password confirmation', with: '12345678'
    click_on 'Sign up'
    expect(User.count).to eql(0)
  end 

  it 'notifies user that account was not created' do
    visit new_user_registration_path
    fill_in 'Email', with: 'tester@gmail.com'
    fill_in 'Password', with: ''
    fill_in 'Password confirmation', with: '12345678'
    click_on 'Sign up'
    expect(page).to have_content 'errors prohibited this user from being saved'
  end 

  it 'allows user to log out' do 
    visit new_user_registration_path
    fill_in 'Email', with: 'tester@gmail.com'
    fill_in 'Password', with: '12345678'
    fill_in 'Password confirmation', with: '12345678'
    click_on 'Sign up'
    save_and_open_page
    click_on 'Logout'
    expect(page).to have_content 'Signed out successfully.'
  end 

end 

require 'database_cleaner'

def sign_up
  visit('/')
  click_link('Sign Up')
  fill_in('Full Name', with: 'John Smith')
  fill_in('Email', with: 'johnsmith@email.com')
  fill_in('Password', with: 'Password')
  fill_in('Confirm Password', with: 'Password')
  click_button('Sign up') 
end

def sign_up_again
  visit('/')
  click_link('Sign Up')
  fill_in('Full Name', with: 'Jane Jones')
  fill_in('Email', with: 'janejones@email.com')
  fill_in('Password', with: 'Password')
  fill_in('Confirm Password', with: 'Password')
  click_button('Sign up')
end

def log_in
  visit('/')
  click_link('Log In')
  fill_in('Email', with: 'johnsmith@email.com')
  fill_in('Password', with: 'Password')
  click_button('Log In')
end

def log_in_again
  visit('/')
  click_link('Log In')
  fill_in('Email', with: 'janejones@email.com')
  fill_in('Password', with: 'Password')
  click_button('Log In')
end

def add_room
  visit('/')
  click_link('Sign Up')
  fill_in('Full Name', with: 'John Smith')
  fill_in('Email', with: 'user@test.com')
  fill_in('Password', with: 'Password1')
  fill_in('Confirm Password', with: 'Password1')
  click_button('Sign up') 
  click_link 'Become a Host'
  
  within("#room-block-1") do
    select('Apartment')
    select('Private')
    select('2')
  end

  within('#select-bedroom') do 
    select('3')
  end 

  within('#select-bathroom') do 
    select('3')
  end 

  within('#listing-name') do 
    fill_in('Be clear and descriptive', with: 'Nice central crash pad')
  end

  within('#summary') do 
    fill_in('Tell us a little about your place', with: 'Come stay in my swanky pad.')
  end

  within('#address') do 
    fill_in("What's your address?", with: '123 Eagle Street, Brisbane QLD, 4000, Australia')
  end

  find("#is-tv").click
  find("#is-air").click
  find("#is-internet").click
  find("#is-heating").click
  find("#is-kitchen").click
  find("#is-active")

  within('#image-upload') do 
    attach_file('images[]', "spec/files/images/Tokyo.jpg")
  end

  within('#price') do 
    fill_in("eg. $100", with: '$500')
  end

  click_button('Save')
end

def edit_room
  visit('/')
  click_link('Sign Up')
  fill_in('Full Name', with: 'John Jackson')
  fill_in('Email', with: 'user4@test.com')
  fill_in('Password', with: 'Password1')
  fill_in('Confirm Password', with: 'Password1')
  click_button('Sign up') 
  click_link 'Become a Host'
  
  within("#room-block-1") do
    select('Apartment')
    select('Private')
    select('2')
  end

  within('#select-bedroom') do 
    select('3')
  end 

  within('#select-bathroom') do 
    select('3')
  end 

  within('#listing-name') do 
    fill_in('Be clear and descriptive', with: 'Nice central crash pad')
  end

  within('#summary') do 
    fill_in('Tell us a little about your place', with: 'Come stay in my swanky pad.')
  end

  within('#address') do 
    fill_in("What's your address?", with: '123 Eagle Street, Brisbane QLD, 4000, Australia')
  end

  find("#is-tv").click
  find("#is-air").click
  find("#is-internet").click
  find("#is-heating").click
  find("#is-kitchen").click
  find("#is-active")

  within('#image-upload') do 
    attach_file('images[]', "spec/files/images/Tokyo.jpg")
  end

  within('#price') do 
    fill_in("eg. $100", with: '$500')
  end

  click_button('Save')
  within('#price') do 
    fill_in("eg. $100", with: '$250')
  end
  click_button('Save')
end


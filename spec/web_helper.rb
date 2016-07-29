def sign_up
  visit('/')
  click_link('Sign Up')
  fill_in('Full Name', with: 'John Smith')
  fill_in('Email', with: 'user@example.com')
  fill_in('Password', with: 'Password1')
  fill_in('Confirm Password', with: 'Password1')
  click_button('Sign up')
end

def log_in
  visit('/')
  click_link('Log In')
  fill_in('Email', with: 'user@example.com')
  fill_in('Password', with: 'Password1')
  click_button('Log In')
end
Given(/^that I am on the signup page$/) do
  visit new_user_registration_path
end

When(/^I complete the form with valid information$/) do
  fill_in 'Email', :with => 'test@test.org'
  fill_in 'Password', :with => 'password'
  fill_in 'Password confirmation', :with => 'password'
  click_button('Sign up')
end

Then(/^an account should be created$/) do
  page.should have_content('Welcome! You have signed up successfully.')
end


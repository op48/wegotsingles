Given(/^that a user is on the signup page$/) do
  visit new_user_registration_path
end

When(/^a "(.*?)" completes the form with valid information$/) do |user|
  fill_in 'Email', :with => 'test@test.org'
  fill_in 'Password', :with => 'password'
  fill_in 'Password confirmation', :with => 'password'
  within("#gender") do
  choose(user)
  end
end

When(/^chooses "(.*?)" as his preference$/) do |sex|
  @pref = sex
  within("#preference-#{sex.downcase}") do
   choose(sex)
  end
  click_button('Sign up')
end

Then(/^a "(.*?)" account should be created$/) do |user|
  page.should have_content('Welcome! You have signed up successfully.')
  user.constantize.count.should eq(1)
end

Then(/^their preference should be recorded$/) do
  User.first.preference == @pref 
end

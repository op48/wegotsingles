Given(/^that a user is on the signup page$/) do
  visit new_user_registration_path
end

When(/^a "(.*?)" completes the form with valid information$/) do |user|
  #binding.pry
  fill_in 'Email', :with => 'test@test.org'
  fill_in 'Password', :with => 'password'
  fill_in 'Password confirmation', :with => 'password'
  fill_in 'Username', :with => user
  within "#user_birthday_3i" do
    select '1' 
  end
  within "#user_birthday_2i" do
    select 'June'
  end
  within "#user_birthday_1i" do
    select '1970'
  end
  within("#gender") do
  choose(user)
  end
end

When(/^chooses "(.*?)" as their preference$/) do |sex|
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

Then(/^their birthday should be recorded$/) do
  User.first.birthday == "Mon, 01 Jun 1970"
end

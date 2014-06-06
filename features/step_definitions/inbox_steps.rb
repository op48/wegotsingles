Given(/^we have a logged\-in user called "(.*?)"$/) do |name|
  @user = User.create!(:first_name => name, :email => "joe@example.org", :password => "password", :username => name, :preference => "Female")
  visit '/users/sign_in'
  fill_in "Email", :with => "joe@example.org"
  fill_in "Password", :with => "password"
  click_button "Sign in"
end

Given(/^"(.*?)" has messages in his inbox$/) do |user|
  r = User.create!(:first_name => name, :email => Faker::Internet.email, :password => "password", :username => Faker::Internet.user_name, :preference => "Female")
  @message = Message.create!(:subject => "Hi", :body => "Welcome Joe", :sender => r, :receiver => @user)
end

Given(/^that we are on the homepage$/) do
  visit '/'
end

Given(/^we click on "(.*?)"$/) do |button|
  click_on button
end

Then(/^we should be able to view the messages in our inbox$/) do
  expect(page.has_content?(@message.subject)).to be true
  # expect(page.has_content?(@message.recipient_id)).to be true
end

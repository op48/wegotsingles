Given(/^we have a logged\-in user called "(.*?)"$/) do |name|
  @user = User.create!(:first_name => name, :email => "joe@example.org", :password => "password", :username => "joe", :preference => "Female")
  visit '/users/sign_in'
  fill_in "Email", :with => "joe@example.org"
  fill_in "Password", :with => "password"
  click_button "Sign in"
end

Given(/^"(.*?)" has messages in his inbox$/) do |user|
  @receiver = User.create!(:first_name => user, :email => "sender@example.org", :password => "password", :username => "sender", :preference => "Female")
  @message = Message.new(:subject => "Hi", :body => "Welcome Joe", :sender => @receiver, :receiver => @user)
  @user.incoming_messages << @message
end

Given(/^that we are on the homepage$/) do
  visit '/'
end

Given(/^we click on "(.*?)"$/) do |button|
  click_on button
end

Then(/^we should be able to view the messages in our inbox$/) do
  expect(page.has_content?(@message.subject)).to be true
  expect(page.has_content?(@message.sender_username)).to be true
end

Given(/^we have a user called "(.*?)"$/) do |user|
  @user = User.create!
end

Given(/^"(.*?)" has messages in his inbox$/) do |user|
  @message = Message.new(:subject => "Hi", :body => "Welcome Joe", :sender_username => "admin")
  @user.messages << @message
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
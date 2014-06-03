Given(/^that we are on the message index page$/) do
  visit messages_path 
end

Given(/^we select "(.*?)"$/) do |button|
  click_on button
end

Given(/^the user has a message from "(.*?)"$/) do |user|
  @message = Message.new(:subject => "Test Subject", :sender_username => "Joe Bloggs", :body => "This is a message from Joe Bloggs")
  joe = User.create!(:email => "joe@example.com", :password => "password")
  joe.messages << @message
end

Then(/^we should see that message$/) do
  visit message_path(@message.reload)
  expect(page.has_content?("Test Subject")).to be true
end
Given(/^that we are on the message index page$/) do
  visit '/messages' 
end

Given(/^we select "(.*?)"$/) do |button|
  click_on button
end

Given(/^the user has a message from "(.*?)"$/) do |user|
  @message = Message.new(:subject => "Test Subject", :sender_username => "Joe Bloggs", :body => "This is a message from Joe Bloggs")
  joe = User.create
  joe.messages << @message
end

Then(/^we should see that message$/) do
  save_and_open_page
  expect(page.has_content?(@message.body)).to be true
end
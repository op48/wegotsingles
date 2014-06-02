Given(/^that we are on the homepage$/) do
  visit '/'
end

Given(/^we recieve a message$/) do
	joe = User.create!
	@message = Message.new(:subject => "Hi", :body => "Welcome Joe", :sender_username => "admin")
	joe.messages << @message
  click_on "inbox"
end

Then(/^we should be able to view the messages in our inbox$/) do
	save_and_open_page
  expect(page.has_content?(@message.subject)).to be true
  expect(page.has_content?(@message.sender_username)).to be true
end
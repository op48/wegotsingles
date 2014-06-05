Given(/^that we are on the inbox page$/) do
  visit '/messages'
end

Given(/^there are messages in his outbox$/) do
  @message = Message.new(:subject => "Hi", :body => "Hi Bonnie", :recipient_username => "Bonnie")
  @user.messages << @message
  visit '/messages/outbox'
end

Then(/^we should view the sent messages$/) do
  expect(page.has_content?(@message.subject)).to be true
  expect(page.has_content?(@message.recipient_username)).to be true
end
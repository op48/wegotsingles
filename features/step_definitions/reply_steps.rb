Given(/^that we are on the show message page$/) do
  @message = Message.new(:subject => "Test Subject Line", :sender_username => "Joe Bloggs", :body => "This is a message from Joe Bloggs")
  @lauraxxx = User.create!(:username => "lauraxxx", :email => "lauraxxx@example.com", :password => "password")
  @lauraxxx.messages << @message
  visit message_path(@message.reload)
end

When(/^we click on the reply option$/) do
  click_on 'Reply'
end

Then(/^we should be able to type our reply on the same page underneath the original message$/) do
  expect(page.has_content?("Reply to")).to be true
end

When(/^we click on "(.*?)" button below the message$/) do |send|
  click_on send
end

Given(/^that we have written "(.*?)" in the reply message$/) do |string|
  fill_in 'reply-textarea', :with => string
  @reply_message = Message.new(:subject => "lauraxxx replies to JoeBloggs", :sender_username => "lauraxxx", :body => string)
end

Then(/^our message containing "(.*?)" is sent to the sender of the original message$/) do |string|
  @joe_bloggs = User.create!(:username => "Joe Bloggs", :email => "joe@example.org", :password => "password") 
  @joe_bloggs.messages << @reply_message
  visit messages_path(@reply_message.reload)
  expect(page.has_content?(string)).to be true
end
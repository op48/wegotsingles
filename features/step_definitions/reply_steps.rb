Given(/^that we are on the show message page$/) do
  visit message_path(@message.reload)
end

When(/^we click on the reply option$/) do
  click_on 'Reply'
end

Given(/^that we have written "(.*?)" in the reply message$/) do |message|
  fill_in 'Body', :with => message
end

When(/^we click on "(.*?)" button below the message$/) do |send|
  click_on send
end

Then(/^our message containing "(.*?)" is sent to the sender of the original message$/) do |message|
  expect(@receiver.reload.incoming_messages.length).to eq(1)
end
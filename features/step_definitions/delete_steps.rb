Then(/^that message should be deleted$/) do
	visit '/messages'
  expect(page.has_content?(@message.body)).to be false
  save_and_open_page
end
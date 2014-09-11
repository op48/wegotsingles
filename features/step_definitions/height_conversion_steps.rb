Given(/^there is field for imperial height$/) do
  #pending # express the regexp above with the code you wish you had
  expect(page.has_content?("Imperial height")).to be true
end

When(/^the user updates their imperial height$/) do
  #pending # express the regexp above with the code you wish you had
  @imperial_height = "6' 3"
  @height = 190.5
  select(@imperial_height, :from => "Imperial height")
  fill_in("Height", :with => @height)
end

When(/^the user is redirected to their profile page$/) do
  #pending # express the regexp above with the code you wish you had
  visit user_path(@user)
end

Then(/^they can see their height in metric$/) do
  #pending # express the regexp above with the code you wish you had
  #binding.pry
  @user.reload
  expect(@user.height.to_f).to eq(@height)
end

Then(/^they can see their height in imperial$/) do
  #pending # express the regexp above with the code you wish you had
  @user.reload
  expect(@user.imperial_height).to eq(@imperial_height)
end
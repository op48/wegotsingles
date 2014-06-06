Given(/^that the user is logged in$/) do
  #pending # express the regexp above with the code you wish you had
  visit new_user_session_path
  fill_in("Email", :with => @email )
  fill_in("Password", :with => "password" )
  click_button "Sign in"
end

Given(/^that the user is on the edit page$/) do
  #pending # express the regexp above with the code you wish you had
  visit edit_user_path(@user)
end

When(/^the user enters a height$/) do
  #pending # express the regexp above with the code you wish you had
  #save_and_open_page
  fill_in("Height", :with => 167.00)
end

Then(/^users height is updated$/) do
  #pending # express the regexp above with the code you wish you had
  @user.reload
  expect(@user.height).to eq(167.00)
  
end
Given(/^a user signs in$/) do
  #pending # express the regexp above with the code you wish you had
  visit new_user_session_path
  fill_in("Email", :with => @user.email)
  fill_in("Password", :with => @user.password)
  click_button("Sign in")
end

Given(/^the user is on the edit profile page$/) do
  #pending # express the regexp above with the code you wish you had
  visit edit_user_path
  
end

When(/^the user updates their basic info$/) do
  @first_name = Faker::Name.first_name
  @last_name = Faker::Name.last_name
  @username = Faker::Internet.user_name
  @about = Faker::Lorem.paragraph
  fill_in("First name", :with => @first_name)
  fill_in("Last name", :with => @last_name)
  fill_in("Username", :with => @username)
  fill_in("Age", :with => 27)
  fill_in("Gender", :with => "F")
  fill_in("Image url", :with => "http://www.officialpsds.com/images/thumbs/MMs-Witch-psd87860.png")
  fill_in("Preference", :with => "straight")
  fill_in("About", :with => @about)

end

When(/^the user submits the form$/) do
  click_on "Update"

end

Then(/^his profile should be updated$/) do
  #pending # express the regexp above with the code you wish you 
  @user.reload
  expect(@user.first_name).to eq(@first_name)
  expect(@user.last_name).to eq(@last_name)
  expect(@user.username).to eq(@username)
  expect(@user.age).to eq(27)
  expect(@user.gender).to eq("F")
  expect(@user.image_url).to eq("http://www.officialpsds.com/images/thumbs/MMs-Witch-psd87860.png")
  expect(@user.preference).to eq("straight")
  expect(@user.about).to eq(@about)

end

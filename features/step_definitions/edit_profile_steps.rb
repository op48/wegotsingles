Given(/^ethnicities exist$/) do
  @arabs = Ethnicity.create(:name => "Arabs")
  @bengalis = Ethnicity.create(:name => "Bengalis")
  @russians = Ethnicity.create(:name => "Russians")
  @japanese = Ethnicity.create(:name => "Japanese")
end


Given(/^a user has ethnicities$/) do
  @user.ethnicities(:ethnicity_ids => [1,2])
end



Given(/^a user signs in$/) do
  visit new_user_session_path
  fill_in("Email", :with => @user.email)
  fill_in("Password", :with => @user.password)
  click_button("Sign in")
end

Given(/^the user is on the edit profile page$/) do
  visit edit_user_path
end

Then(/^ethnicities exist on the page$/) do
  @ethnicities = Ethnicity.all
  @ethnicities.each do |ethnicity|
    expect(page.has_content?(ethnicity.name)).to be true
  end
end

Then(/^smoking preferences exist on the page$/) do
  expect(page.has_content?(@user.smoking)).to be true
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
  #check('user[ethnicity_ids][]')
  check "Bengalis"
  choose("user_smoking_true")
end

When(/^the user submits the form$/) do
  click_on "Update"
end

Then(/^his profile should be updated$/) do
  @user.reload
  expect(@user.first_name).to eq(@first_name)
  expect(@user.last_name).to eq(@last_name)
  expect(@user.username).to eq(@username)
  expect(@user.age).to eq(27)
  expect(@user.gender).to eq("F")
  expect(@user.image_url).to eq("http://www.officialpsds.com/images/thumbs/MMs-Witch-psd87860.png")
  expect(@user.preference).to eq("straight")
  expect(@user.about).to eq(@about)
  expect(@user.ethnicities).to eq([@bengalis]) 
end

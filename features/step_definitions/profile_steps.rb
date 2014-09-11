Given(/^a user exists$/) do
  #pending # express the regexp above with the code you wish you had
  @email = Faker::Internet.email  

  @user = User.create!(:first_name => Faker::Name.first_name, 
    :last_name => Faker::Name.last_name, 
    :username => Faker::Internet.user_name,
    :email => Faker::Internet.email,
    :password => Faker::Internet.password,
    :age => "27", 
    :type => "Female",
    :email => @email,
    :password => "password",
    :about => Faker::Lorem.paragraph,
    :height => 187.96,
    :imperial_height => "6' 2",
    :preference => "male"
    )
end

Given(/^We are in the profile page$/) do
  #pending # express the regexp above with the code you wish you had
  visit user_path(@user)
end

Then(/^We should see the user's first name$/) do
  #pending # express the regexp above with the code you wish you had
  expect(page.has_content?(@user.first_name)).to be true
end

Then(/^We should see the user's last name$/) do
  #pending # express the regexp above with the code you wish you had
  expect(page.has_content?(@user.last_name)).to be true
end

Then(/^we should see a profile picture$/) do
  #pending # express the regexp above with the code you wish you had
  expect(page.has_css?("img[src='#{@user.image_url}']")).to be true
end

Then(/^We should see the user's username$/) do
  #pending # express the regexp above with the code you wish you had
  expect(page.has_content?(@user.username)).to be true
end

Then(/^We should see the user's age$/) do
  #pending # express the regexp above with the code you wish you had
  expect(page.has_content?(@user.age)).to be true
end

Then(/^We should see the user's gender$/) do
  #pending # express the regexp above with the code you wish you had
  expect(page.has_content?(@user.type)).to be true
end

Then(/^We should see the user's about$/) do
  #pending # express the regexp above with the code you wish you had
  expect(page.has_content?(@user.about)).to be true
end

Then(/^We should see the user's height$/) do
  #pending # express the regexp above with the code you wish you had
  expect(page.has_content?(@user.height)).to be true
end

Then(/^We should see the user's preference$/) do
  #pending # express the regexp above with the code you wish you had
  expect(page.has_content?(@user.preference)).to be true
end
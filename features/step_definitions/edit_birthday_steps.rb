Given(/^is on the edit registration page$/) do
  visit edit_user_registration_path
end

When(/^a user enters a new date of birth$/) do
  within "#user_birthday_3i" do
    select '13' 
  end
  within "#user_birthday_2i" do
    select 'January'
  end
  within "#user_birthday_1i" do
    select '1960'
  end
end

When(/^submits the form$/) do
  click_button "Update"
end

Then(/^their date of birth should be changed$/) do
  User.first.birthday == "Mon, 13 Jan 1960"
end


Given(/^languages exist$/) do
  @languages = ["French", "Greek", "Japanese", "Ruby"]
  @languages.each do |l|
    Language.create!(name: l)
  end
   # binding.pry
end

Given(/^a user has languages$/) do
  @user.languages(:language_ids => [0])
end

Given(/^the edit profile page has languages$/) do
  @languages = Language.all
  @languages.each do |l|
    expect(page.has_content?(l.name)).to be true
  end
end


When(/^they choose to add more than one language$/) do
  save_and_open_page
  select('Japanese', :from => 'user_language_ids')
  select('Ruby', :from => 'user_language_ids')

end

Then(/^their profile should be updated$/) do
  @user.reload
  counter = 0
  @userlanguages = @user.languages.all
  @userlanguages.each do |language|
    counter+=1
  end
  expect(counter).to eq(2)

end

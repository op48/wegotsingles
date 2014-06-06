Given(/^languages exist$/) do
  @languages = ["French", "Greek", "Japanese", "Ruby"]
  @languages.each do |l|
    Language.create!(name: l)
  end
end

Given(/^a user has languages$/) do
  @user.languages(:language_ids => [1,2,3])
end

Given(/^the edit profile page has languages$/) do
  @languages = Language.all
  @languages.each do |l|
    expect(page.has_content?(l.name)).to be true
  end
end

When(/^they choose to add a language$/) do
  check "Ruby"
end

Then(/^their profile should be updated$/) do
  @user.reload
  expect(@user.languages).to eq([Language.find_by(:name => "Ruby" )])
end

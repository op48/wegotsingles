Given(/^horoscopes exist$/) do
  @horoscopes = ["Aries", "Taurus", "Libra"]
  @horoscopes.each do |h|
    Horoscope.create!(:name => h)
  end
end

Given(/^a user has horoscopes$/) do
  @user.horoscopes(:horoscopes_ids => [1,2,3])
end

Given(/^the edit profile page has horoscopes$/) do
  @horoscopes = Horoscope.all
  @horoscopes.each do |h|
    expect(page.has_content?(h.name)).to be true
  end
end

When(/^they choose to add a horoscope$/) do
  check "Libra"
end

Then(/^their profile should be updated with their choice$/) do
  @user.reload
  expect(@user.horoscopes).to eq([Horoscope.find_by(:name => "Libra" )])
end

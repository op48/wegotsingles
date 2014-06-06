Given(/^horoscopes exist$/) do
  @horoscopes = ["Aries", "Taurus", "Libra"]
  @horoscopes.each do |h|
    Horoscope.create!(:name => h)
  end
end

Given(/^the edit profile page has horoscopes$/) do
  @horoscopes = Horoscope.all
  @horoscopes.each do |h|
    expect(page.has_content?(h.name)).to be true
  end
end

When(/^they choose to add a horoscope$/) do
  select("Libra", :from => 'Horoscope')
end

Then(/^their profile should be updated with their choice$/) do
  @user.reload
  expect(@user.horoscope).to eq(Horoscope.find_by(:name => "Libra" ))
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

joe = User.first
100.times do |i|
	@mess = Message.create(subject: "test#{i}", sender_username: "admin")
	joe.messages << @mess
end



Ethnicity.find_or_create_by(:name => "Asian")
Ethnicity.find_or_create_by(:name => "Middle Eastern")
Ethnicity.find_or_create_by(:name => "Black")
Ethnicity.find_or_create_by(:name => "Native American")
Ethnicity.find_or_create_by(:name => "Indian")
Ethnicity.find_or_create_by(:name => "Pacific Islander")
Ethnicity.find_or_create_by(:name => "Hispanic")
Ethnicity.find_or_create_by(:name => "White")
Ethnicity.find_or_create_by(:name => "Other")

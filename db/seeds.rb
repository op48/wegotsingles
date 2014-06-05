# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


joe = User.find_or_create_by!(:id => "1") do |user|
  user.email = "joe@email.com" 
  user.password = "password"
  user.username = "joey88"
  user.birthday = "16 Jun 1979"
  user.gender = "male" 
  user.preference = "female"
end

User.find_or_create_by!(:id => "2") do |user|
  user.email = "jenny@email.com" 
  user.password = "drowssap"
  user.username = "jenny88"
  user.birthday = "20 Mar 1978"
  user.gender = "female" 
  user.preference = "male"
end

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


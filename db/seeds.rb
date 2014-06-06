# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


joe = Male.find_or_create_by!(:id => "1") do |user|
  user.email = "joe@email.com" 
  user.password = "password"
  user.username = "joey88"
  user.birthday = "16 Jun 1979"
  user.preference = "Female"
  user.height = 180
  user.image_url = "http://a403.idata.over-blog.com/232x300/5/01/45/64/Rouge.jpg"
  user.about = "Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur aliquet quam id dui posuere blandit. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Lorem ipsum dolor sit amet, consectetur adipiscing elit."

end

Female.find_or_create_by!(:id => "2") do |user|
  user.email = "jenny@email.com" 
  user.password = "drowssap"
  user.username = "jenny88"
  user.birthday = "20 Mar 1978"
  user.preference = "Male"
  user.height = 169
  user.image_url = "http://thefuntimesguide.com/images/blogs/Ms_Green_MMs_on_Couch.jpg"
  user.about = "Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur aliquet quam id dui posuere blandit. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Lorem ipsum dolor sit amet, consectetur adipiscing elit."
end

joe = User.first
10.times do |i|
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


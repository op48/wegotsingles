# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

joe = User.first
100.times do |i|
	@recieve = Message.create(subject: "test#{i}", sender_username: "admin")
	joe.messages << @recieve
end

100.times do |i|
	@sent = Message.create(subject: "test#{i}", recipient_username: "Bonnie")
	joe.messages << @sent
end






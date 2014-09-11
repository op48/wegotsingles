# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



joe = Male.find_or_create_by!(:username => "joey88") do |user|
  user.email = "joe@email.com" 
  user.password = "password"
  user.birthday = "16 Jun 1979"
  user.preference = "Female"
  user.height = 180
  user.image_url = "http://a403.idata.over-blog.com/232x300/5/01/45/64/Rouge.jpg"
  user.about = "Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur aliquet quam id dui posuere blandit. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Lorem ipsum dolor sit amet, consectetur adipiscing elit."

end

lola = Female.find_or_create_by!(:username => "lola3") do |user|
  user.email = "lola@email.com" 
  user.password = "password"
  user.birthday = "18 Aug 1982"
  user.gender = "female" 
  user.preference = "male"
end

User.find_or_create_by!(:username => "jenny88") do |user|
  user.email = "jenny@email.com" 
  user.password = "drowssap"
  user.birthday = "20 Mar 1978"
  user.preference = "Male"
  user.height = 169
  user.image_url = "http://thefuntimesguide.com/images/blogs/Ms_Green_MMs_on_Couch.jpg"
  user.about = "Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur aliquet quam id dui posuere blandit. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Sed porttitor lectus nibh. Donec sollicitudin molestie malesuada. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Lorem ipsum dolor sit amet, consectetur adipiscing elit."
end

5.times do |i|
	@receive = Message.create!(subject: "test#{i}", sender: lola, receiver: joe)
end

Horoscope.find_or_create_by(:name => "Aries")
Horoscope.find_or_create_by(:name => "Taurus")
Horoscope.find_or_create_by(:name => "Gemini")
Horoscope.find_or_create_by(:name => "Cancer")
Horoscope.find_or_create_by(:name => "Leo")
Horoscope.find_or_create_by(:name => "Virgo")
Horoscope.find_or_create_by(:name => "Libra")
Horoscope.find_or_create_by(:name => "Scorpio")
Horoscope.find_or_create_by(:name => "Sagittarius")
Horoscope.find_or_create_by(:name => "Capricorn")
Horoscope.find_or_create_by(:name => "Aquarius")
Horoscope.find_or_create_by(:name => "Pisces")

Ethnicity.find_or_create_by(:name => "Asian")
Ethnicity.find_or_create_by(:name => "Middle Eastern")
Ethnicity.find_or_create_by(:name => "Black")
Ethnicity.find_or_create_by(:name => "Native American")
Ethnicity.find_or_create_by(:name => "Indian")
Ethnicity.find_or_create_by(:name => "Pacific Islander")
Ethnicity.find_or_create_by(:name => "Hispanic")
Ethnicity.find_or_create_by(:name => "White")
Ethnicity.find_or_create_by(:name => "Other")

Language.find_or_create_by(:name => "Afrikaans", :code => "AF")
Language.find_or_create_by(:name => "Albanian", :code => "SQ")
Language.find_or_create_by(:name => "Arabic", :code => "AR")
Language.find_or_create_by(:name => "Armenian", :code => "HY")
Language.find_or_create_by(:name => "Basque", :code => "EU")
Language.find_or_create_by(:name => "Bengali", :code => "BN")
Language.find_or_create_by(:name => "Bulgarian", :code => "BG")
Language.find_or_create_by(:name => "Catalan", :code => "CA")
Language.find_or_create_by(:name => "Cambodian", :code => "KM")
Language.find_or_create_by(:name => "Chinese (Mandarin)", :code => "ZH")
Language.find_or_create_by(:name => "Croatian", :code => "HR")
Language.find_or_create_by(:name => "Czech", :code => "CS")
Language.find_or_create_by(:name => "Danish", :code => "DA")
Language.find_or_create_by(:name => "Dutch", :code => "NL")
Language.find_or_create_by(:name => "English", :code => "EN")
Language.find_or_create_by(:name => "Estonian", :code => "ET")
Language.find_or_create_by(:name => "Fiji", :code => "FJ")
Language.find_or_create_by(:name => "Finnish", :code => "FI")
Language.find_or_create_by(:name => "French", :code => "FR")
Language.find_or_create_by(:name => "Georgian", :code => "KA")
Language.find_or_create_by(:name => "German", :code => "DE")
Language.find_or_create_by(:name => "Greek", :code => "EL")
Language.find_or_create_by(:name => "Gujarati", :code => "GU")
Language.find_or_create_by(:name => "Hebrew", :code => "HE")
Language.find_or_create_by(:name => "Hindi", :code => "HI")
Language.find_or_create_by(:name => "Hungarian", :code => "HU")
Language.find_or_create_by(:name => "Icelandic", :code => "IS")
Language.find_or_create_by(:name => "Indonesian", :code => "ID")
Language.find_or_create_by(:name => "Irish", :code => "GA")
Language.find_or_create_by(:name => "Italian", :code => "IT")
Language.find_or_create_by(:name => "Japanese", :code => "JA")
Language.find_or_create_by(:name => "Javanese", :code => "JW")
Language.find_or_create_by(:name => "Korean", :code => "KO")
Language.find_or_create_by(:name => "Latin", :code => "LA")
Language.find_or_create_by(:name => "Latvian", :code => "LV")
Language.find_or_create_by(:name => "Lithuanian", :code => "LT")
Language.find_or_create_by(:name => "Macedonian", :code => "MK")
Language.find_or_create_by(:name => "Malay", :code => "MS")
Language.find_or_create_by(:name => "Malayalam", :code => "ML")
Language.find_or_create_by(:name => "Maltese", :code => "MT")
Language.find_or_create_by(:name => "Maori", :code => "MI")
Language.find_or_create_by(:name => "Marathi", :code => "MR")
Language.find_or_create_by(:name => "Mongolian", :code => "MN")
Language.find_or_create_by(:name => "Nepali", :code => "NE")
Language.find_or_create_by(:name => "Norwegian", :code => "NO")
Language.find_or_create_by(:name => "Persian", :code => "FA")
Language.find_or_create_by(:name => "Polish", :code => "PL")
Language.find_or_create_by(:name => "Portuguese", :code => "PT")
Language.find_or_create_by(:name => "Punjabi", :code => "PA")
Language.find_or_create_by(:name => "Quechua", :code => "QU")
Language.find_or_create_by(:name => "Romanian", :code => "RO")
Language.find_or_create_by(:name => "Russian", :code => "RU")
Language.find_or_create_by(:name => "Samoan", :code => "SM")
Language.find_or_create_by(:name => "Serbian", :code => "SR")
Language.find_or_create_by(:name => "Slovak", :code => "SK")
Language.find_or_create_by(:name => "Slovenian", :code => "SL")
Language.find_or_create_by(:name => "Spanish", :code => "ES")
Language.find_or_create_by(:name => "Swahili", :code => "SW")
Language.find_or_create_by(:name => "Swedish", :code => "SV")
Language.find_or_create_by(:name => "Tamil", :code => "TA")
Language.find_or_create_by(:name => "Tatar", :code => "TT")
Language.find_or_create_by(:name => "Telugu", :code => "TE")
Language.find_or_create_by(:name => "Thai", :code => "TH")
Language.find_or_create_by(:name => "Tibetan", :code => "BO")
Language.find_or_create_by(:name => "Tonga", :code => "TO")
Language.find_or_create_by(:name => "Turkish", :code => "TR")
Language.find_or_create_by(:name => "Ukrainian", :code => "UR")
Language.find_or_create_by(:name => "Urdu", :code => "TH")
Language.find_or_create_by(:name => "Uzbek", :code => "UZ")
Language.find_or_create_by(:name => "Vietnamese", :code => "VI")
Language.find_or_create_by(:name => "Welsh", :code => "CY")
Language.find_or_create_by(:name => "Xhosa", :code => "XH")




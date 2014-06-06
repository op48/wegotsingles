class UserHoroscope < ActiveRecord::Base

  belongs_to :user
  belongs_to :horoscope

end

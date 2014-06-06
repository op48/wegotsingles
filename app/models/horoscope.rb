class Horoscope < ActiveRecord::Base
  has_many :user_horoscopes
  has_many :users, :through => :user_horoscopes
end

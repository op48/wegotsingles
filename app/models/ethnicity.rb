class Ethnicity < ActiveRecord::Base
  has_many :user_ethnicities
  has_many :users, :through => :user_ethnicities
end

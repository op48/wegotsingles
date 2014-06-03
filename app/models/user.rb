class User < ActiveRecord::Base
  has_many :user_ethnicities
  has_many :ethnicities, :through => :user_ethnicities
end

class User < ActiveRecord::Base
	 # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :messages
  validates_uniqueness_of :username

  has_many :user_ethnicities
  has_many :ethnicities, :through => :user_ethnicities

end

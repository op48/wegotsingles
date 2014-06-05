class User < ActiveRecord::Base


	has_many :messages
  validates_uniqueness_of :username
  validates_presence_of :username


  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



  has_many :user_ethnicities
  has_many :ethnicities, :through => :user_ethnicities
  # accepts_nested_attributes_for :user_ethnicities

end

class User < ActiveRecord::Base

	has_many :messages
  validates_uniqueness_of :username
  validates_presence_of :username
  validates_presence_of :preference

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

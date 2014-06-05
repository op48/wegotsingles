class User < ActiveRecord::Base

	has_many :messages
  validates_uniqueness_of :username
  validates_presence_of :username
  validates_presence_of :preference

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def imperial_height=(imp_height) #stored as feet and inches(setting)
    feet,inches = imp_height.split("' ").map{ |h| h.to_i } 
    total_inches = (feet * 12) + inches
    self.height = total_inches * 2.54 #conversion of inch to cm
    @metric_height = self.height#
  end

  def imperial_height # stored as cm convert to feet and inches
    @metric_height = self.height
    inches = @metric_height * 0.393700787
    feet_inches_array = (inches.divmod 12).map{ |h| h.round }
    @feet_inches = feet_inches_array.join("' ")
  end

end

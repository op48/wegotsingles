class UserEthnicity < ActiveRecord::Base
  belongs_to :user
  belongs_to :ethnicity
end

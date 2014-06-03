class Message < ActiveRecord::Base
	belongs_to :user
  has_many :replies, :class_name => "Message"
  belongs_to :original_message, :class_name => "Message", :foreign_key => :message_id
end

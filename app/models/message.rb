class Message < ActiveRecord::Base
  has_many :replies, :class_name => "Message"
  belongs_to :original_message, :class_name => "Message", :foreign_key => :message_id
  belongs_to :sender, :class_name => "User", :foreign_key => :sender_id
  belongs_to :receiver, :class_name => "User", :foreign_key => :recipient_id
  validates :sender_id, presence: true
  validates :recipient_id, presence: true

  after_create :send_email
	
	def self.send_welcome_message(male)
		lola = Female.find_by(:username => "lola3")
		@message = Message.new(:sender => lola ,:receiver => male, :subject => "Hi #{male.username} ;)", :body => "Hi #{male.username}, thanks for joining us. Can't wait to start talking xx" )
	  @message.save!
	  #Notifications.welcome(male).deliver
	end

	def send_email
		Notifications.new_message(self)
	end
end

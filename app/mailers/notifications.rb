class Notifications < ActionMailer::Base
  default from: "lola@wegotsingles.com"

	def welcome(male)
    @greeting = "Hi Joe, thanks for joining us. Can't wait to start talking xx"
    mail to: "joe@example.com", subject: "Hi Joe ;)"
  end

	def new_message(message)
		@message = message
		mail to: message.sender.email, subject: "New Message"
	end
end

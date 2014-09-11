class Male < User

after_create :welcome_email

def welcome_email
  Message.send_welcome_message(self)
end

end

class MessagesController < ApplicationController

	
	def index
		@user_messages = current_user.messages 
		@message = Message.new
	end

  def show
    
  end

end

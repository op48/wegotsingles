class MessagesController < ApplicationController

	
	def index
		@user_messages = current_user.messages 
		@message = Message.new
	end

  def show
    @message = Message.find(params[:id]) 
  end

  def destroy
  	binding.pry
  	@message = Message.find(params[:id])
  	@message.destroy
  	redirect_to messages_path
  end
end

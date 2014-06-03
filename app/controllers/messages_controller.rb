class MessagesController < ApplicationController

  before_action :authenticate_user!
	
	def index
		@user_messages = current_user.messages 
		@message = Message.new
	end

  def show
    @message = Message.find(params[:id]) 
  end

end

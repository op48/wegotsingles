class MessagesController < ApplicationController

  before_action :authenticate_user!
	
	def index
		@user_messages = current_user.messages 
		@message = Message.new
    #binding.pry
    @pages = @user_messages.paginate(:page => params[:page], :per_page => 5).order('created_at DESC')
	end

  def outbox
    
  end
  def show
    @message = Message.find(params[:id]) 
  end

  def destroy
  	@message = Message.find(params[:id])
  	@message.destroy!
  	redirect_to messages_path
  end
end

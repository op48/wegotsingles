class MessagesController < ApplicationController

  before_action :authenticate_user!
	
	def index
		@user_messages = current_user.messages 
		@message = Message.new
    @pages = @user_messages.paginate(:page => params[:page], :per_page => 5).order('created_at DESC')
	end

  def show
    @message = Message.find(params[:id]) 
    @message.update( read: true )
  end

  def destroy
  	@message = Message.find(params[:id])
  	@message.destroy!
  	redirect_to messages_path
  end
end

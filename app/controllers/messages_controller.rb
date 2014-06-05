class MessagesController < ApplicationController

  before_action :authenticate_user!
	
	def index
		@user_messages = current_user.messages 
		@message = Message.new
    @pages = @user_messages.paginate(:page => params[:page], :per_page => 5).order('created_at DESC')
	end

  def outbox
    
  end
  def show
    @message = Message.find(params[:id]) 
    @message.update( read: true )
    @reply = Message.new(:receiver => @message.sender)
  end

  def destroy
  	@message = Message.find(params[:id])
  	@message.destroy!
  	redirect_to messages_path
  end

  def create
    @reply_message = Message.new(message_params)
    @reply_message.sender = current_user
    @reply_message.save!
    redirect_to messages_path
  end

  private
  def message_params
    params.require(:reply).permit(:recipient_id, :body)
  end
end

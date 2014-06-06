class MessagesController < ApplicationController

  before_action :authenticate_user!
	
	def index
		@user_messages = current_user.incoming_messages 
		@pages = @user_messages.paginate(:page => params[:page], :per_page => 5).order('created_at DESC')
	end

  def outbox
    @user_messages = current_user.outgoing_messages 
    @pages = @user_messages.paginate(:page => params[:page], :per_page => 5).order('created_at DESC')
  end
  
  def show
    @message = Message.find(params[:id]) 
    @reply = Message.new(:receiver => @message.sender, :message_id => @message.id)
    @message.update( read: true )
  end

  def destroy
  	@message = Message.find(params[:id])
  	@message.destroy!
  	redirect_to messages_path
  end

  def create  
    @reply = Message.new(message_params)
    @reply.sender = current_user
    if @reply.save
      respond_to do |format|
        
        format.html do
          flash[:notice] = "Your reply has been sent"
          redirect_to messages_path
        end

        format.js 

      end

    else
      respond_to do |format|
        format.html do
          @message = Message.find(@reply.message_id)
          render :show
        end
      end
    end
  end

  private
  def message_params
    params.require(:reply).permit(:recipient_id, :body, :message_id)
  end

end

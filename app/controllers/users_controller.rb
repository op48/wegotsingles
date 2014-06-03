class UsersController < ApplicationController
  before_action :authenticate_user!
  before_filter :allowed_params, :only => :update
  
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.update(allowed_params)
    redirect_to edit_user_path
     
  end

  private
  def allowed_params #whitelist
    params.require(:user).permit(:first_name, :last_name, :username, :age, :gender, :preference, :image_url, :about, :height) #for each attribute in the model /white_listed
  end 

end

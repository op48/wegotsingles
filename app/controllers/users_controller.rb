class UsersController < ApplicationController
  before_action :authenticate_user!
  before_filter :allowed_params, :only => :update
  
  def show
    @user = User.find(params[:id])
  end

  def me
    @user = current_user
    render :show
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.update(allowed_params)
    redirect_to me_user_path
  end

  private
  def allowed_params #whitelist
    params.require(:user).permit(:first_name, :last_name, :username, :age, :type, :preference, :image_url, :about, :height, :imperial_height) #for each attribute in the model /white_listed
  end 

end

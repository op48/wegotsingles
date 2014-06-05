class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = current_user
    @ethnicities = Ethnicity.all
  end

  def update
    @user = current_user
    @user.update(allowed_params)
    redirect_to edit_user_path  
  end

  private
  def allowed_params #whitelist
    params.require(:user).permit(:first_name, :last_name, :username, :age, 
    :gender, :preference, :image_url, :about, :height, 
    :ethnicity_ids => []) #for each attribute in the model /white_listed
  end 

end

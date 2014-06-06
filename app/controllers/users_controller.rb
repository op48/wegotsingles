class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def show
    @user = User.find(params[:id])
  end

  def me
    @user = current_user
    render :show
  end

  def edit
    @user = current_user
    @ethnicities = Ethnicity.all
    @languages = Language.all
    @horoscopes = Horoscope.all
  end

  def update
    @user = current_user
    @user.update(allowed_params)
    redirect_to me_user_path
  end

  private
  def allowed_params #whitelist
    params.require(:user).permit(:first_name, :last_name, :username, :age, 
    :type, :preference, :image_url, :about, :height, :imperial_height, :horoscope_id, 
    :ethnicity_ids => [], :language_ids => []) #for each attribute in the model /white_listed
  end 
end

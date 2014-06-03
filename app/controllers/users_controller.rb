class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
  end

  def edit
    @current_user = current_user 
  end

end

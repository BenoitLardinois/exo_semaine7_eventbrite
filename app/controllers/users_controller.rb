class UsersController < ApplicationController
  before_action :authenticate_user!#, only: [:show]

  def show
#METHODE A CORRIGER !!
    @my_user = User.find(params[:id])
    if current_user.is_admin || @my_user == current_user
      #redirect_to user_path
    else
      redirect_to new_user_session_path
    end
  end
end

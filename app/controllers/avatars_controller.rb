class AvatarsController < ApplicationController
  def create
    @my_user = User.find(params[:user_id])
    @my_user.avatar.attach(params[:avatar])
    redirect_to(user_path(@my_user))
  end
end

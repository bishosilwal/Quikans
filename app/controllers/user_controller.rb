class UserController < ApplicationController
  before_action :authenticate_user!

  def update
    current_user.update(user_params)
    redirect_to home_index_url
  end

  private
  def user_params
    params.require(:user).permit(:avatar)
  end
end

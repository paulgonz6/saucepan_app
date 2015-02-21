class UsersController < ApplicationController
  def show
    @user = User.find_by(["lower(screen_name) = ?", params[:screen_name].downcase])
  end
end

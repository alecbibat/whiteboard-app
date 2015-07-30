class UsersController < ApplicationController

  def index
  end

  def new
    @user = User.new()
  end

  def create
  end

  def user_params
    params.require(:user).permit!
  end
end
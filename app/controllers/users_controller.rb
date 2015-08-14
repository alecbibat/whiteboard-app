class UsersController < ApplicationController

  def index
  end

  def show
    @user = User.find_by(id: session[:user].id)
  end

  def new
    @user = User.new()
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:notice] = "You've successfully registered!"
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit!
  end
end
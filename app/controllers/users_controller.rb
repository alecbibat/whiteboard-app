class UsersController < ApplicationController

  def index
    @mycoursespage = false
  end

  def show
    @mycoursespage = false
    @user = User.find_by(id: session[:user].id)
  end

  def new
    @mycoursespage = false
    @user = User.new()
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:notice] = "You've successfully registered!"
      session[:user] = @user
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
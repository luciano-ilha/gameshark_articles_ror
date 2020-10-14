class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.create(user_params)
    if @object.save
      flash[:success] = "User successfully created"
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash[:error] = "Something went wrong"
      render welcome_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end

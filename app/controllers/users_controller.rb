class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.create(user_params)

    if @user.save
      flash[:success] = "User successfully created"
      session[:user_id] = @user.id
      redirect_to welcome_path
    else
      flash[:error] = "Something went wrong"
      render root_path
    end
  end
  
  def destroy
    @user = User.find(current_user.id)

    if @user.destroy
      flash[:success] = 'User was successfully deleted.'
      redirect_to root_path
    else
      flash[:error] = 'Something went wrong'
      redirect_to welcome_path
    end
  end
  
  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end

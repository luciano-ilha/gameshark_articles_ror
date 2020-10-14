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

  def destroy
    @user = User.find(user_params)
    if @user.destroy
      flash[:success] = 'User was successfully deleted.'
      redirect_to new_user_path
    else
      flash[:error] = 'Something went wrong'
      redirect_to welcome_path
    end
  end
  

  private

  def user_params
    params.require(:user).permit(:id, :username, :password)
  end
end

class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(username: params[:username])

    if @user&.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash[:error] = 'You have to Sign Up first!'
      redirect_to new_user_path
    end
  end

  def destroy
    session.delete(:user_id)
    @current_user = nil
    redirect_to root_path
  end

  def login
  end
end

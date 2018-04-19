class SessionsController < ApplicationController

  def new
    
  end

  def create
    # byebug
    @user = User.find_by(username: params[:session][:username])

    if @user.nil?
      redirect_to new_user_path
    # session[:user] = par
    else
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    end
  end
end

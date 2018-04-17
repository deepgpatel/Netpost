class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :delete]

  def index
    @users = User.all
  end

  def show
    
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)

    redirect_to user_path(@user)
  end

  def edit

  end

  def update

    redirect_to user_path(@user)
  end

  def delete
    @user.delete
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :password)
  end

  def set_user
    @user = User.find(params[:id])
  end
end

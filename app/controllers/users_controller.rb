class UsersController < ApplicationController
  # before_action :set_user, only: [:show, :edit, :update, :delete]
  before_action :current_user 

  def index
    @users = User.all
  end

  def show

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      redirect_to user_path(@user)
    else
      render :new
    # @user = User.create(user_params)
    end

  end

  def edit

  end

  def update
    # byebug
    current_user.subjects << Subject.find(params[:subject_id])

    redirect_to user_path(@user)
  end

  def delete
    @user.delete
  end

  # def follow_subject
  # byebug
  # end

  private

  def user_params
    params.require(:user).permit(:name, :username, :password)
  end

  # def set_user
  #   @user = User.find(params[:id])
  # end


end

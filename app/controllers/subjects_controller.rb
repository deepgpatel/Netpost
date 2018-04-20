class SubjectsController < ApplicationController
  before_action :set_subject, only: [:show, :edit, :update, :delete, :unfollow]

  def index
    @subjects = Subject.all
  end

  def show

  end

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new(subject_params)

    if @subject.valid?
      @subject.save

      redirect_to subject_path(@subject)
    else

      render :new
    end

  end

  def edit
    puts "arb"
  end

  def update


    redirect_to subject_path(@subject)
  end

  def unfollow
    # binding.pry
    current_user.subjects.delete(@subject)
    redirect_to user_path(@user)
  end

  def delete
    @subject.delete
  end

  private

  def subject_params
    params.require(:subject).permit(:title)
  end

  def set_subject
    @subject = Subject.find(params[:id])
  end


end

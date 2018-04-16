class SubjectsController < ApplicationController
  before_action :set_subject, only: [:show, :edit, :update, :delete]

  def index
    @subjects = Subject.all
  end

  def show
  end

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.create(subject_params)

    redirect_to subject_path(@subject)
  end

  def edit

  end

  def update

    redirect_to subject_path(@subject)
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

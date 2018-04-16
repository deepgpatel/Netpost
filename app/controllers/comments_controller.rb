class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :delete]

  def index
    @comments = Comment.all
  end

  def show
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(comment_params)

    redirect_to comment_path(@comment)
  end

  def edit

  end

  def update

    redirect_to comment_path(@comment)
  end

  def delete
    @comment.delete
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end
end

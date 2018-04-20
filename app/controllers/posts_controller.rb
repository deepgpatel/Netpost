class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :delete]

  def index
    @posts = Post.all
  end

  def show
    @comment = Comment.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.valid?
      @post.save

      redirect_to post_path(@post)
    else

      render :new
    end
  end

  def edit

  end

  def update
    @comment = Comment.new(comment_params)
    @comment.post_id = @post.id
    @comment.user_id = current_user
    # TODO add actual user_id
    @comment.save
    @post.comments << @comment
    redirect_to post_path(@post)
  end

  def delete
    @post.delete
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end

  def comment_params
    params.require(:comment).permit(:content)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end

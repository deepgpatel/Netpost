class VotesController < ApplicationController
  before_action :set_vote, only: [:show, :edit, :update, :delete]

  def index
    @votes = Vote.all
  end

  def show
  end

  def new
    @vote = Vote.new
  end

  def create
    @vote = Vote.create(vote_params)

    redirect_to vote_path(@vote)
  end

  def edit

  end

  def update

    redirect_to vote_path(@vote)
  end

  def delete
    @vote.delete
  end

  private

  def vote_params
    params.require(:vote).permit(:rank)
  end

  def set_vote
    @vote = Vote.find(params[:id])
  end
end

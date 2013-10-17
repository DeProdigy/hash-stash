class VotesController < ApplicationController

  def index
    @votes = Vote.all

  end

  def new
  end

  def create
    vote_name = params[:name]
    vote = Vote.create(name: vote_name)
    id = vote.id

    redirect_to("/votes/#{id}")
  end

  def show
    id = params[:id]
    @vote = Vote.find(id)
  end

  def edit
    choice = params[:choice]
    id = params[:id]

    vote = Vote.find id

    if choice == "yes"
      vote.yes += 1
      vote.save
    else
      vote.no += 1
      vote.save
    end

    redirect_to('/votes')
  end

end

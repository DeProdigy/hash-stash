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
    name = params[:name]
    if choice == "yes"
      vote = Vote.new
      vote.name = name
      vote.yes = choice
      vote.save
    else
      vote = Vote.new
      vote.name = name
      vote.no = choice
      vote.save
    end

    redirect_to('/votes')
  end

end
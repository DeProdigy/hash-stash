class CommentsController < ApplicationController

  def index

  end

  def new
  end

  def show

  end

  def create
    content = params[:content]
    Comment.create :content => content

    redirect_to '/comments'
  end

end

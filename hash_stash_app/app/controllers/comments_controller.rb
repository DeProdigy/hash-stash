class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def new
  end

  def show
    id = params[:id]
    @comment = Comment.find(id)
  end

  def create
    content = params[:content]
    Comment.create :content => content

    redirect_to '/comments'
  end

  def create_reply

  end

end

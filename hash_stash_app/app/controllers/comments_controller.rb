class CommentsController < ApplicationController

  #get '/' => 'comments#index'
  #get '/comments' => 'comments#index'
  def index
    @comments = Comment.all
  end

  #get '/comments/new' => 'comments#new'
  def new
  end

  #get '/comments/:id' => 'comments#show'
  def show
    id = params[:id]
    @comment = Comment.find(id)
    @replies = Reply.find_by comment_id: id
  end

  #post '/comments' => 'comments#create'
  def create
    content = params[:content]
    Comment.create :content => content

    redirect_to '/comments'
  end

end

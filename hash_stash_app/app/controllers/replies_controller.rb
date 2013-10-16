class RepliesController < ApplicationController

  #post '/comments/:id' => 'comments#create_reply'
  def new

    id = params[:id]
    content = params[:content]

    reply = Reply.new
    reply.content = content
    reply.comment_id = id #fr_key
    reply.save

    redirect_to "/comments/#{id}"
  end

end
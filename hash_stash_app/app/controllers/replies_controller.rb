class RepliesController < ApplicationController

  #post '/comments/:id' => 'comments#create_reply'
  def create

    id = params[:id]
    content = params[:content]

    Reply.create :content => content, :comment_id => id #fr_ky

    redirect_to "/comments/#{id}"
  end

end

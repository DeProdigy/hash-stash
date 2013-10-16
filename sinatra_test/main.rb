require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'active_record'


ActiveRecord::Base.logger = Logger.new( STDOUT )

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "ec2-54-225-112-205.compute-1.amazonaws.com",
  :username => "fvpqhfzusshfch",
  :password => "Q787hi9QR6c2Y4CtFJEETXgWGt",
  :database => "ddut7v6pj5tbqu"
)

helpers do
  def before
    ActiveRecord::Base.logger = Logger.new( STDOUT )
    ActiveRecord::Base.establish_connection(
      :adapter => "postgresql",
      :host => "ec2-54-225-112-205.compute-1.amazonaws.com",
      :username => "fvpqhfzusshfch",
      :password => "Q787hi9QR6c2Y4CtFJEETXgWGt",
      :database => "ddut7v6pj5tbqu"
    )
  end
  def after
    ActiveRecord::Base.connection.close
  end
end

#ActiveRecord::Base.connection.close

class Comment < ActiveRecord::Base
end

get '/' do
  redirect to('/comments')
end

get '/comments' do
  before
  @comments = Comment.all
  #binding.pry
  after
  erb :comments
end

get '/comments/new' do
  erb :comments_new
end

get '/comments/:id' do
  erb :comments_id
end


post '/comments' do
# <form action="/comments/new" method="post">
#   <label for="comment">Enter Your Comment:</label>
#   <textarea name="comment" id="comment" cols="30" rows="10"></textarea>
#   <input type="submit" value="Add Comment">
# </form>
  content = params[:comment]
  before
  comment = Comment.new
  comment.content = content
  comment.save
  after


  redirect to('/comments/:id')
end

post '/comments/:id' do
  redirect to('/comments/:id')
end






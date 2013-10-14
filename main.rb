require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  redirect to('/comments')
end

get '/comments' do
  erb :comments
end

get '/comments/:id' do
  erb :comments_id
end

get '/comments/new' do
  erb :comments_new
end

post '/comments' do
  redirect to('/comments/:id')
end

post '/comments/:id' do
  redirect to('/comments/:id')
end
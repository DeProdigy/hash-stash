require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  redirect to('/comments')
end

get '/comments' do

end

get '/comments/:id' do

end

get '/comments/new' do

end

post '/comments' do
  redirect to('/comments/:id')
end

post '/comments/:id' do
  redirect to('/comments/:id')
end
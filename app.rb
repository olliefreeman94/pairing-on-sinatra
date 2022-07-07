require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  "Hello world!"
end

get '/test' do
  "Test response"
end

get '/random_cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb :index
end

post '/named_cat' do
  p params
  @name = params[:name]
  erb :index
end

get '/form' do
  erb :form
end
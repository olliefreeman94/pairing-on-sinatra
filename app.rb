require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  "Hello world!"
end

get '/test' do
  "Test response"
end

get '/cat' do
  erb :index
end
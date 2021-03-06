require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :myapp
end

get '/contacts' do
  erb :contacts
end

get '/blogs' do
  erb :index
end

get '/a' do
  erb :a
end

get '/b' do
  erb :b
end

get '/c' do
  erb :c
end

post '/contacts' do
  @name    = params['name']
  @email   = params['email']
  @content = params['content']
  erb :contacts_confirm
end

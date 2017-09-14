require 'sinatra'
require 'sinatra/reloader'

get '/users' do
  erb :form
end

post '/users/confirm' do
  @name    = params['name']
  @email   = params['email']
  @password = params['password']
  erb :user_confirm
end

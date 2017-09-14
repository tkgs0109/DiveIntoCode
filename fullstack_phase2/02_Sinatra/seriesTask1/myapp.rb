require 'sinatra'
require 'sinatra/reloader'

get '/users' do
  erb :form
end

post '/users/confirm' do
  @name    = params['name']
  @email   = params['email']
  @password = params['password']
  if @name.empty? || @email.empty? || @password.empty?
    @error_msg = "値を入力してください"
    erb :form
  else
    erb :user_confirm
  end
end

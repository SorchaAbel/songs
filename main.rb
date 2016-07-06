require 'sinatra'
require 'slim'
require 'sinatra/reloader' if development?


get '/' do
  @title = 'All About Home'
  slim :home
end

get '/about' do
  @title = 'All About This Website'
  slim :about
end

get '/contact' do
  @title = 'All About Contacts'
  slim :contact
end

not_found do
  @title = "Page not Found - Error"
  slim :not_found
end

get '/fake-error' do
  status 500
  "There’s nothing wrong, really :P"
end

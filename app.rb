require 'sinatra'
require 'sinatra/reloader'
require 'rdiscount'

get '/' do
  erb :index
end
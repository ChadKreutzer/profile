require 'sinatra'
require 'sinatra/reloader'
require 'redcarpet'

get '/' do
  erb :index
end
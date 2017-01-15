require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/reloader'
require 'redcarpet'
require 'sass/plugin/rack'

set :database, "sqlite3:portfoliodb.sqlite3"
require './models'

Sass::Plugin.options[:style] = :compressed
use Sass::Plugin::Rack

get '/' do
  @projects = Project.all
  erb :index
end
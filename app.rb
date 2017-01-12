require 'sinatra'
require 'sinatra/reloader'
require 'redcarpet'
require 'sass/plugin/rack'

Sass::Plugin.options[:style] = :compressed
use Sass::Plugin::Rack

get '/' do
  erb :index
end
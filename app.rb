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

post '/' do
  require 'pony'
  
  name  = params[:name]
  # mail = params[:mail]
  subject = params[:subject]
  body  = params[:body]
  
  Pony.options = { subject: "#{subject}",
                   body: "#{name}\n\n#{body}"
                  }
  Pony.mail(to: "chadkreutzer@outlook.com")
  
  redirect '/#contact'
end

# get '/success' do
#   erb :success
# end
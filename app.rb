# require 'sinatra'
# require 'sinatra/activerecord'
# require 'sinatra/reloader'
# require 'redcarpet'
# require 'sass/plugin/rack'


# set :database, "sqlite3:portfoliodb.sqlite3"
require './config/environment'
require './models'

Sass::Plugin.options[:style] = :compressed
use Sass::Plugin::Rack

class ProfileApp < Sinatra::Base
  get '/' do
    @projects = Project.all
    erb :index
  end
  
  post '/' do
    require 'pony'
    
    # name  = params[:name]
    # mail = params[:mail]
    # subject = params[:subject]
    # body  = params[:body]
    
    # Pony.options = { subject: "#{subject}",
    #                 body: "#{name}\n#{mail}\n\n#{body}",
    #                 via_options: {
    #                   address:'smtp.sendgrid.net',
    #                   port: '587',
    #                   enable_starttls_auto: true,
    #                   user_name:'apikey',
    #                   password: ENV['SENDGRID_API_KEY'],
    #                   authentication: :plain
    #                 }
    #                 }
    # Pony.mail(to: "chadkreutzer@outlook.com")
    
    # Look into figaro gem for .gitignore.
    
    redirect '/#contact'
  end
end
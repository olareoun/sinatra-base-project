require 'sinatra/base'
require 'sinatra/contrib'
require 'haml'
require 'sass'

$LOAD_PATH.push(File.expand_path(File.join(File.dirname(__FILE__), '../')))

class Web < Sinatra::Base

  use Rack::Session::Cookie, secret: 'change_me'

  configure do
    set :run, false
    set :public_folder, './web/public'
    set :static, true
  end

  get '/' do
    erb :index, :layout => :home_layout
  end

  get '/home' do
    haml :home
  end

  # get '/css/main_style.css' do
  #   sass :main_style
  # end

end

require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
  enable :sessions
  set :session_secret, "secret"
  end
  
  get '/' do 
    @session = session
    erb :index
  end
  
  post '/checkout' do
    @sessions = session
    item = params["item"] #sets the params in the session hash
    @sessions[:item] = item #displays the shopping cart contents
  end

end
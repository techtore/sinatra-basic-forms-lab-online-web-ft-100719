require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do 
    erb :index
  end
  
  post '/puppy' do 
    @puppy = Puppy.new(params[])
    erb :display_puppy
  end
end

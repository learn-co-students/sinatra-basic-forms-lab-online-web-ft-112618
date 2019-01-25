require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    erb :index
  end

  get "/new" do
    erb :create_puppy
  end

  post "/puppy" do
    @puppy = Puppy.new(params.values[0], params.values[1], params.values[2])
    erb :display_puppy
  end
end

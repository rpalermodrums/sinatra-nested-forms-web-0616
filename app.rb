require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      # binding.pry
      puts params[:pirate][:ships]
      pirate_name, pirate_weight, pirate_height = params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height]
      @pirate = Pirate.new(name: pirate_name, weight: pirate_weight, height: pirate_height)
      ship1 = params[:pirate][:ships][0]
      ship2 = params[:pirate][:ships][1]
      @ship1 = Ship.new(ship1)
      @ship2 = Ship.new(ship2)
      erb :'pirates/show'
    end
  end
end

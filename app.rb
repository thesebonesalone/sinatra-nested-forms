require './environment'

module FormsLab
  class App < Sinatra::Base
    get "/" do
      erb :root
    end

    get "/new" do
      erb :new
    end

    post "/pirates" do
      @pirate = Pirate.new(params)
      params[:pirate][:ships].each{|details| Ship.new(details)}
      @ship1 = Ship.all[0]
      @ship2 = Ship.all[1]
      erb :show
    end

  end
end

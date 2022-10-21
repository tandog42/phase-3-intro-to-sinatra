require "sinatra"

class App < Sinatra::Base
  get '/games/:id' do
    game = Game.find(params[:id])
    game.to_json
  end

end
run App

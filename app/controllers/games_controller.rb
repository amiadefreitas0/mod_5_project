class GamesController < ApplicationController
    def index
        games = Game.all
        render json: games
    end

    def show 
        found_game = Game.find(params[:id])
        game = found_game.to_json(:methods => :game_rating, :include=> :categories)
        render json: game
    end


 

end


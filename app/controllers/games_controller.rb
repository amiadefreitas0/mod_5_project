class GamesController < ApplicationController
    def index
        
        games = Game.all
        rating = Game.game_rating
        render json: games
    end

    def show 
        game = Game.find(params[:id])
        render json: game
    end
 

end


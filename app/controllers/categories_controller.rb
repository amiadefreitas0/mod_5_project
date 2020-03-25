class CategoriesController < ApplicationController

    def category_games
       category = Category.find_by(name:params[:id])
        
        games = category.games
        render json: games 
    end
end

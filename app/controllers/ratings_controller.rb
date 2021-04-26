class RatingsController < ApplicationController

    def create 
        rating = Rating.create(rate: params[:rate], game_id: params[:game_id], user_id: params[:user_id])
        render json: rating
    end 

  

    private 
    def rating_params
        params.require(:rating).permit!
    end
end

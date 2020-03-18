class RatingsController < ApplicationController

    def index
        ratings = Rating.all
        render json: ratings
    end

    def show
        rating = Rating.find(params[:id])
        render json: rating
    end

    def create 

    end 

    private 
    def rating_params
        params.require(:rating).permit!
    end
end

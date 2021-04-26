class ReviewsController < ApplicationController

    def index
        reviews = Review.all
        render json: reviews
    end


    def show
        review = Review.find(params[:id])
        render json: review
    end

    def game_reviews
        
        game = Game.find(params[:id])
        reviews = game.reviews
        review_user= reviews.to_json(:include => :user)
        render json: review_user
    end

    def create
        review = Review.create(text: params[:text], game_id: params[:game_id], user_id: params[:user_id])  
        render json: review     
    end


end

class CollectionsController < ApplicationController

    
    def show
        user = User.find(params[:id])
        collection = user.games
        render json: collection
    end

    def create
        # byebug
        collection = Collection.find_or_create_by(user_id: params[:user_id], game_id: params[:game_id])
        render json: collection
    end 

    def game
        collection = Collection.find_by(user_id: params[:user_id], game_id: params[:game_id])
        render json: collection
    end

    def destroy
        collection = Collection.find_by(user_id: params[:user_id], game_id: params[:game_id])
        collection.delete

    end

    private

    def collection_params
        params.require(:collection).permit!
    end


end

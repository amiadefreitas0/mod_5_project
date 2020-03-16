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

    private

    def collection_params
        params.require(:collection).permit!
    end


end

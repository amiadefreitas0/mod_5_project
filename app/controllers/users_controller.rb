class UsersController < ApplicationController


    def index
        users = User.all
        render json: users
    end

    def show 
        user = User.find(params[:id])
        render json: user
    end

    def create 
        user = User.create(name: params["name"], username: params["username"],password:params["password"])
        render json: user
    end 
    
    def profile 
        token = request.headers["Authentication"]
        user = User.find(decode(token)["id"])
        render json: user
    end


    

end

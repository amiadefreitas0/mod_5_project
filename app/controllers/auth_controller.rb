class AuthController < ApplicationController
    def create 
        user = User.find_by(username: params['username'])
        if user && user.authenticate(params['password'])
            
            render json:{
                message:"Loggedin",
                data: user ,
                successful: true,
                token: encode({"id": user.id})
                } 
        else
            render json:{
                successful: false,
                message: "Error: wrong password/ username"
            }
        end
    end


end
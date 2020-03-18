class Game < ApplicationRecord
    has_many :collections
    has_many :users, through: :collections
    has_many :reviews
    has_many :ratings
    has_many :game_categories
    has_many :categories, through: :game_categories 

    #  get all games array
    #  for each game get the ratings
    # create a new array of ratings 
    #  use .reduce 
    def self.game_rating
        games = Game.all
        ratingsArray = games.map do |game|
            game.ratings 
        end 
         ratingsArray.each do |ratingArray|
            rates = ratingArray.map do |rating|
                rating.rate
            end
            if(rates.length > 0)
                sum = rates.sum
                average = sum / rates.length
            else
                nil  
            end
            

         end
        
    end 
end

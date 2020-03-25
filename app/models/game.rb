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
    def game_rating
        ratingArray = self.ratings
        results = ratingArray.inject(0){|sum,el| sum + el.rate}.to_f / ratingArray.length
       return results
    end

    
end

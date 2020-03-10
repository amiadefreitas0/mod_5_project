class Game < ApplicationRecord
    has_many :collections
    has_many :users, through: :collections
    has_many :reviews
    has_many :ratings
    has_many :game_categories
    has_many :categories, through: :game_categories 
end

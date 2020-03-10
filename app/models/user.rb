class User < ApplicationRecord
    has_many :collections
    has_many :games, through: :collections
    has_many :reviews
    has_many :ratings

end

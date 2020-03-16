class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }

    has_many :collections
    has_many :games, through: :collections
    has_many :reviews
    has_many :ratings

end

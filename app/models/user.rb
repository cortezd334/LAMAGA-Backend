class User < ApplicationRecord
    has_many :votes
    has_many :candidates, through: :votes
    
    has_secure_password
end

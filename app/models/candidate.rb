class Candidate < ApplicationRecord
  belongs_to :state
  
  has_many :votes
end

class Candidate < ApplicationRecord
  belongs_to :state

  has_many :votes
  has_many :users, through: :votes

end

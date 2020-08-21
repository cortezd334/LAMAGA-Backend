class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :candidate, optional: true
end

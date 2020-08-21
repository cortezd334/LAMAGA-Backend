class VoteSerializer < ActiveModel::Serializer
  attributes :id, :name, :party, :candidateUrl, :user_id

  has_one :user
  has_one :candidate
end

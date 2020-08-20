class VoteSerializer < ActiveModel::Serializer
  attributes :id, :name, :party, :candidateUrl
  has_one :user
  has_one :candidate
end

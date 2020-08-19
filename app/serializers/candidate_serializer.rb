class CandidateSerializer < ActiveModel::Serializer
  attributes :id, :name, :party, :age
  has_one :user
  has_one :state
end

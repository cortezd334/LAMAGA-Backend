class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :party, :registered
end

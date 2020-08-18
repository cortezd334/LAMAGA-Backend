class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :age, :party, :registered, :poll_location, :password_digest
end

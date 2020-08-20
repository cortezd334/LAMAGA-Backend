class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :age, :address, :party, :registered
  
end

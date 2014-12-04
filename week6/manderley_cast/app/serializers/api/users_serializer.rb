class Api::UsersSerializer < ActiveModel::Serializer
  attributes :id, :username, :role
end

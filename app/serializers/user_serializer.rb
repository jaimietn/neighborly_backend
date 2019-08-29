class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :avatar, :bio, :posts
end

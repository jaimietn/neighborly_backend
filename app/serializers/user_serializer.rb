class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :avatar, :bio, :posts, :received_messages, :sent_messages
end

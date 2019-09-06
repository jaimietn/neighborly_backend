class MessageSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :sent, :post_id, :sender_id, :recipient_id
end

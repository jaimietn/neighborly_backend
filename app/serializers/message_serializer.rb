class MessageSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :sent, :post_id, :sender_id, :recipient_id
  belongs_to :sender, class_name: "User"
  belongs_to :recipient, class_name: "User"
end

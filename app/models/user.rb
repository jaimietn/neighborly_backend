class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: true
  has_many :posts
  has_many :received_messages, foreign_key: "recipient_id", class_name: "Message"
  has_many :sent_messages, foreign_key: "sender_id", class_name: "Message"


end

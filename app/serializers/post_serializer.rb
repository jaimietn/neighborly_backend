class PostSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :latitude, :longitude, :posted, :expires, :category, :title, :content, :image
end

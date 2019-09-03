class RemoveLocationFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :location, :string
  end
end

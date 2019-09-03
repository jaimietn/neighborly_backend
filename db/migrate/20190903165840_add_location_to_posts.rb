class AddLocationToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :location, :string
  end
end

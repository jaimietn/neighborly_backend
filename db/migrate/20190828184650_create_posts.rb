class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.belongs_to :user, foreign_key: true
      t.decimal :longitude
      t.decimal :latitude
      t.date :posted
      t.date :expires
      t.string :category
      t.string :title
      t.text :content
      t.string :image
      t.string :comments

      t.timestamps
    end
  end
end

class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :title
      t.string :content
      t.date :sent
      t.belongs_to :post, foreign_key: true
      t.belongs_to :sender
      t.belongs_to :recipient

      t.timestamps
    end
  end
end

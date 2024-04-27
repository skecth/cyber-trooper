class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :link
      t.string :image
      t.string :description
      t.string :post_by
      t.integer :social_media_type

      t.timestamps
    end
  end
end

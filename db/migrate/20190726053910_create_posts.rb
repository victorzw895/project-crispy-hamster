class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.bigint :user_id
      t.text :title
      t.text :content
      t.text :image
      t.text :content_type

      t.timestamps
    end
  end
end

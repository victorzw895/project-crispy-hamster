class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :email
      t.text :name
      # t.bigint :industry_id
      t.text :tag_line #focus
      t.text :about
      t.text :logo_image
      t.text :banner_image
      t.text :more

      t.timestamps
    end
  end
end

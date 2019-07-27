class CreateInudstriesUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :industries_users, :id => false do |t|
      t.bigint :industry_id
      t.bigint :user_id
    end
  end
end

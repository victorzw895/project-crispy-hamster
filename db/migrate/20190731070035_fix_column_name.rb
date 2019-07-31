class FixColumnName < ActiveRecord::Migration[5.2]
  # db/migrate/xxxxxxxxxx_fix_column_name.rb
  def self.up
    rename_column :posts, :media, :image
  end

  def self.down
    # rename back if you need or do something else or do nothing
  end
end

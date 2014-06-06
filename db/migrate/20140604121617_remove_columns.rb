class RemoveColumns < ActiveRecord::Migration
  def self.up
    remove_column :users, :height
  end

  def self.down
    add_column :users, :height, :decimal, precision: 6, scale: 2
  end
end

class AddNewHeightToUser < ActiveRecord::Migration
  def change
    add_column :users, :height, :decimal, precision: 6, scale: 2
  end
end

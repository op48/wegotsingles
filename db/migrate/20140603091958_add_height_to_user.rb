class AddHeightToUser < ActiveRecord::Migration
  def change
    add_column :users, :height, :decimal, precision: 5, scale: 2
  end
end

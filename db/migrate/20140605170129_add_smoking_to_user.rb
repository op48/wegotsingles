class AddSmokingToUser < ActiveRecord::Migration
  def change
    add_column :users, :smoking, :boolean
  end
end

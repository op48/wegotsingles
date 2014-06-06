class AddColumnToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :recipient_username, :string
  end
end

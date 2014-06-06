class RemoveUsernamesFromMessages < ActiveRecord::Migration
  def change
    remove_column :messages, :sender_username, :string
    remove_column :messages, :recipient_username, :string
  end
end

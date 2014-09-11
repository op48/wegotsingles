class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :subject
      t.text :body
      t.string :sender_username
      t.integer :sender_id
      t.integer :user_id

      t.timestamps
    end
  end
end

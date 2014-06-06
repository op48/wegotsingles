class AddForeignKeysToUserHoroscopes < ActiveRecord::Migration
  def change
    add_column :user_horoscopes, :horoscope_id, :integer
    add_column :user_horoscopes, :user_id, :integer
  end
end

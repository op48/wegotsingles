class AddHoroscopeIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :horoscope_id, :integer
  end
end

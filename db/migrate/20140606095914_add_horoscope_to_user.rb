class AddHoroscopeToUser < ActiveRecord::Migration
  def change
    add_column :users, :horoscope, :string
  end
end

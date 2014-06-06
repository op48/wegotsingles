class AddNameToHoroscopes < ActiveRecord::Migration
  def change
    add_column :horoscopes, :name, :string
  end
end

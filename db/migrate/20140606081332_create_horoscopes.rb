class CreateHoroscopes < ActiveRecord::Migration
  def change
    create_table :horoscopes do |t|

      t.timestamps
    end
  end
end

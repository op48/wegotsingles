class CreateUserHoroscopes < ActiveRecord::Migration
  def change
    create_table :user_horoscopes do |t|

      t.timestamps
    end
  end
end

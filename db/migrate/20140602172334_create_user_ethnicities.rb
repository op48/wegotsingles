class CreateUserEthnicities < ActiveRecord::Migration
  def change
    create_table :user_ethnicities do |t|

      t.timestamps
    end
  end
end

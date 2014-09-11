class CreateUserLanguages < ActiveRecord::Migration
  def change
    create_table :user_languages do |t|

      t.timestamps
    end
  end
end

class AddUserIdToUserEthnicity < ActiveRecord::Migration
  def change
    add_column :user_ethnicities, :user_id, :integer
  end
end

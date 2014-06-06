class AddAttributeToUserEthnicity < ActiveRecord::Migration
  def change
    add_column :user_ethnicities, :ethnicity_id, :integer
  end
end

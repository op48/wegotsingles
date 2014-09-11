class AddAttributeToEthnicity < ActiveRecord::Migration
  def change
    add_column :ethnicities, :name, :string
  end
end

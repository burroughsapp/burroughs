class AddBuildingIdToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :building_id, :integer
    add_index :locations, :building_id
  end
end

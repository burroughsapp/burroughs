class CreateBuildingLocations < ActiveRecord::Migration
  def change
    create_table :building_locations do |t|
      t.references :building
      t.references :location

      t.timestamps
    end
    add_index :building_locations, :building_id
    add_index :building_locations, :location_id
  end
end

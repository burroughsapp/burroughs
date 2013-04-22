class CreateExistenceLocations < ActiveRecord::Migration
  def change
    create_table :existence_locations do |t|
      t.references :existence
      t.references :location

      t.timestamps
    end
    add_index :existence_locations, :existence_id
    add_index :existence_locations, :location_id
  end
end

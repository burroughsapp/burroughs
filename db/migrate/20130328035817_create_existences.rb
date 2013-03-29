class CreateExistences < ActiveRecord::Migration
  def change
    create_table :existences do |t|
      t.references :location
      t.references :establishment
      t.text :description
      t.integer :start_year
      t.integer :end_year

      t.timestamps
    end
    add_index :existences, :location_id
    add_index :existences, :establishment_id
  end
end

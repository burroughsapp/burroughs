class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :name
      t.text :description
      t.integer :start_year
      t.integer :end_year

      t.timestamps
    end
  end
end

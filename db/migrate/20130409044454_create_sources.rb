class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.text :content
      t.integer :sourceable_id
      t.string :sourceable_type

      t.timestamps
    end
    add_index :sources, [:sourceable_id, :sourceable_type]
  end
end

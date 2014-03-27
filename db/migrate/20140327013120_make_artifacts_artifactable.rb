class MakeArtifactsArtifactable < ActiveRecord::Migration
  def change
    add_column :artifacts, :artifactable_id, :integer
    add_column :artifacts, :artifactable_type, :string
    add_index :artifacts, :artifactable_id
    add_index :artifacts, :artifactable_type
  end
end

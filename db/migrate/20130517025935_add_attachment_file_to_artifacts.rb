class AddAttachmentFileToArtifacts < ActiveRecord::Migration
  def self.up
    change_table :artifacts do |t|
      t.attachment :file
    end
  end

  def self.down
    drop_attached_file :artifacts, :file
  end
end

class AddAttachmentPhotoToGraphics < ActiveRecord::Migration
  def self.up
    change_table :graphics do |t|
      t.has_attached_file :photo
    end
  end

  def self.down
    drop_attached_file :graphics, :photo
  end
end

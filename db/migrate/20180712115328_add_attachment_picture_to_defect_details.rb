class AddAttachmentPictureToDefectDetails < ActiveRecord::Migration[5.2]
  def self.up
    change_table :defect_details do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :defect_details, :picture
  end
end

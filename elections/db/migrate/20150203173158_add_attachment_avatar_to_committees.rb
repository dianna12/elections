class AddAttachmentAvatarToCommittees < ActiveRecord::Migration
  def self.up
    change_table :committees do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :commitees, :avatar
  end
end

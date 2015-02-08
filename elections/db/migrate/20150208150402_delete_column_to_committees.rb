class DeleteColumnToCommittees < ActiveRecord::Migration
  def change
  	remove_column :committees, :logo_content_type
  end
end

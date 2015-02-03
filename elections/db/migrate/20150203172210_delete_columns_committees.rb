class DeleteColumnsCommittees < ActiveRecord::Migration
  def change
    remove_column :committees, :logo_file_name
	remove_column :committees, :logo_content_type
	remove_column :committees, :logo_file_size
  end
end

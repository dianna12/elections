class RenameDetailsToCommittees < ActiveRecord::Migration
  def change
    rename_column :committees, :logo, :logo_file_name
  end
end

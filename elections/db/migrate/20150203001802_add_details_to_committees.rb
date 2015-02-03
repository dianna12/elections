class AddDetailsToCommittees < ActiveRecord::Migration
  def change
    add_column :committees, :logo_file_size, :integer
    add_column :committees, :logo_content_type, :string
  end
end

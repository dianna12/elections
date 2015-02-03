class AddNumberToProvince < ActiveRecord::Migration
  def change
  	add_column :provinces, :mandate_number, :integer
  	add_column :provinces, :authorized_number, :integer
  end
end

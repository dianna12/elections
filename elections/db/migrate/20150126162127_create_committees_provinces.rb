class CreateCommitteesProvinces < ActiveRecord::Migration
  def change
    create_table :committees_provinces do |t|
      t.references :committee, index: true
      t.references :province, index: true

      t.timestamps null: false
    end
    add_foreign_key :committees_provinces, :committees
    add_foreign_key :committees_provinces, :provinces
  end
end

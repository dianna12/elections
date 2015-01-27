class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :number
      t.references :committee, index: true
      t.references :constituency, index: true

      t.timestamps null: false
    end
    add_foreign_key :votes, :committees
    add_foreign_key :votes, :constituencies
  end
end

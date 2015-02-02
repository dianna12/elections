class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :password
      t.string :email
      t.string :role
      t.references :constituency, index: true

      t.timestamps null: false
    end
    add_foreign_key :users, :constituencies
  end
end

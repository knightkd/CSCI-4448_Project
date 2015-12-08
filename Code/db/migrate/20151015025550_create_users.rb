class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.references :role, index: true

      t.timestamps null: false
    end
    add_foreign_key :users, :roles
  end
end

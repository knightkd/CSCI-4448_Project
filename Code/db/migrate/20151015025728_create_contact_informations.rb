class CreateContactInformations < ActiveRecord::Migration
  def change
    create_table :contact_informations do |t|
      t.string :phone
      t.string :first_name
      t.string :last_name
      t.string :email
      t.references :organization, index: true

      t.timestamps null: false
    end
    add_foreign_key :contact_informations, :organizations
  end
end

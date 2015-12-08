class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :website
      t.text :description
      t.references :type, index: true
      t.references :catagory, index: true
      t.references :partner_type, index: true

      t.timestamps null: false
    end
    add_foreign_key :organizations, :types
    add_foreign_key :organizations, :catagories
    add_foreign_key :organizations, :partner_types
  end
end

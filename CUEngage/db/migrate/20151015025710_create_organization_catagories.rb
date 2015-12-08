class CreateOrganizationCatagories < ActiveRecord::Migration
  def change
    create_table :organization_catagories do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
